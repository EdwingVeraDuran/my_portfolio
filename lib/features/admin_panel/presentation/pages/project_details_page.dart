import 'package:my_portfolio/core/shared/widgets/page_base.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/description_field.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/project_actions.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/status_field.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/tech_stack_field.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/title_field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final int projectId;
  const ProjectDetailsPage({super.key, required this.projectId});

  @override
  Widget build(BuildContext context) {
    return PageBase(
      child: Container(
        constraints: BoxConstraints(maxWidth: 600),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              Avatar(initials: 'Icon', size: 256),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TitleField(), StatusField()],
              ),
              DescriptionField(),
              TechStackField(),
              ProjectActions(),
            ],
          ),
        ),
      ),
    );
  }
}
