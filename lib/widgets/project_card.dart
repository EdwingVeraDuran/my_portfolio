import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/util/url_helper.dart';
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
            Text(project.description).p.mono,
          ],
        ),
      ),
    );
  }
}
