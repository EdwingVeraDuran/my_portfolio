import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/models/project_status.dart';
import 'package:my_portfolio/widgets/info_chip.dart';
import 'package:my_portfolio/widgets/url_button.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: BoxConstraints(maxWidth: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(project.iconAsset, height: 36),
                Gap(16),
                Text(project.title).mono.large,
                Spacer(),
                UrlButton(project.url),
                Gap(8),
                UrlButton(project.url, isDownload: true),
              ],
            ),
            Gap(16),
            InfoChip(
              project.projectStatus.label,
              color: project.projectStatus.color,
            ),
            Gap(16),
            Text(project.description).mono,
            Gap(16),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children:
                    project.techStack
                        .map((e) => InfoChip(e.label, url: e.url))
                        .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
