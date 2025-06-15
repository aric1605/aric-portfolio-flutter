import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 280,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(project.image, height: 140, width: 280, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: TextStyle(color: CustomColor.whiteSecondary, fontSize: 10),
            ),
          ),
          Spacer(),
          //footer
          Container(
            decoration: BoxDecoration(color: CustomColor.bgLight1),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Row(
              children: [
                Text(
                  "Available On",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.androidLink]);
                      },
                      child: Image.asset("assets/android.png", width: 20),
                    ),
                  ),
                if (project.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.iosLink]);
                      },
                      child: Image.asset("assets/ios.png", width: 20),
                    ),
                  ),
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [project.webLink]);
                      },
                      child: Image.asset("assets/web.png", width: 20),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
