import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/util/url_helper.dart';
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
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(project.iconAsset, height: 36),
                Gap(16),
                Text(project.title).mono.large,
                Spacer(),
                IconButton.outline(
                  icon: Icon(LucideIcons.download),
                  onPressed: () => UrlHelper.launch(project.url, true),
                ),
                Gap(8),
                IconButton.outline(
                  icon: Icon(LucideIcons.github),
                  onPressed: () => UrlHelper.launch(project.url),
                ),
              ],
            ),
            Text(project.description).p.mono,
          ],
        ),
      ),
    );
  }
}
