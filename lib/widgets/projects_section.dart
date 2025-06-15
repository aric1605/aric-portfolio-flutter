import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/project_utils.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: <Widget>[
          Text(
            "Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < Projects.length; i++)
                  ProjectCard(project: Projects[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
