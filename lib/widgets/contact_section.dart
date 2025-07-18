import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // title
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopSize) {
                  return buildNameEmailFieldDesktop();
                }

                // else
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(hintText: "Your message", maxLines: 16),
          ),
          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowSecondary,
                ),
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset("assets/github.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset("assets/linkedin.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset("assets/instagram.png", width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        // name
        Flexible(child: CustomTextField(hintText: "Your name")),
        const SizedBox(width: 15),
        // email
        Flexible(child: CustomTextField(hintText: "Your email")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        // name
        Flexible(child: CustomTextField(hintText: "Your name")),
        const SizedBox(height: 15),
        // email
        Flexible(child: CustomTextField(hintText: "Your email")),
      ],
    );
  }
}
