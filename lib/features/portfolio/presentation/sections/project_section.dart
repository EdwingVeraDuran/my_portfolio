import 'package:my_portfolio/features/portfolio/data/projects.dart';
import 'package:my_portfolio/core/shared/widgets/projects_display.dart';
import 'package:my_portfolio/core/shared/widgets/section_title.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectSection extends StatelessWidget {
  ProjectSection({super.key});

  final data = Projects.data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [SectionTitle('Projects'), Gap(64), ProjectsDisplay(data)],
    );
  }
}
