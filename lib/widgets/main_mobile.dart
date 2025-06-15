import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return SingleChildScrollView(
      child: Container(
        constraints: const BoxConstraints(minHeight: 560),
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    CustomColor.scaffoldBg.withOpacity(0.6),
                    CustomColor.scaffoldBg.withOpacity(0.6),
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                "assets/my_3d_avatar.png",
                width: screenWidth,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Hi\nI'm Aric Vasaya\nA Flutter Developer",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 190,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: const Text(
                  "Get in touch",
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
