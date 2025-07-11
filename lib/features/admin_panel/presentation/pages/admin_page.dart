import 'package:my_portfolio/core/shared/widgets/page_base.dart';
import 'package:my_portfolio/core/shared/widgets/projects_display.dart';
import 'package:my_portfolio/features/admin_panel/presentation/widgets/admin_header.dart';
import 'package:my_portfolio/features/portfolio/data/projects.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageBase(
      child: Column(
        children: [
          AdminHeader(),
          Gap(32),
          Divider(),
          Gap(32),
          ProjectsDisplay(Projects.data, isAdmin: true),
        ],
      ),
    );
  }
}
