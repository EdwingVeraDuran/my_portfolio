import 'package:my_portfolio/core/models/project.dart';
import 'package:my_portfolio/core/models/project_status.dart';
import 'package:my_portfolio/core/shared/widgets/info_chip.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/delete_button.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/view_button.dart';
import 'package:my_portfolio/features/portfolio/presentation/widgets/url_button.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final bool isAdmin;
  const ProjectCard(this.project, {super.key, this.isAdmin = false});

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
                if (isAdmin) ...[
                  ViewButton(1),
                  Gap(8),
                  DeleteButton(),
                ] else ...[
                  UrlButton(project.url),
                  Gap(8),
                  UrlButton(project.url, isDownload: true),
                ],
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
