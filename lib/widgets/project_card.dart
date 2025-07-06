import 'package:my_portfolio/models/project.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard(this.project, {super.key});

  void _launchUrl(String url, [bool isRelease = false]) async {
    final baseUri = Uri.parse(url);
    final finalUri =
        isRelease ? baseUri.replace(path: '${baseUri.path}/releases') : baseUri;

    if (await canLaunchUrl(finalUri)) {
      await launchUrl(finalUri);
    } else {
      debugPrint('Could not launch URL: $finalUri');
    }
  }

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
                  onPressed: () => _launchUrl(project.url, true),
                ),
                Gap(8),
                IconButton.outline(
                  icon: Icon(LucideIcons.github),
                  onPressed: () => _launchUrl(project.url),
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
