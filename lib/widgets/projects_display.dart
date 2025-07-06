import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectsDisplay extends StatelessWidget {
  final List<Project> projects;
  const ProjectsDisplay(this.projects, {super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return isMobile
        ? Column(
          spacing: 24,
          children: projects.map((e) => ProjectCard(e)).toList(),
        )
        : Center(
          child: Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: projects.map((e) => ProjectCard(e)).toList(),
          ),
        );
  }
}
