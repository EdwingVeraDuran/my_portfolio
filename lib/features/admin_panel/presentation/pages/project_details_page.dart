import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final int projectId;
  const ProjectDetailsPage({super.key, required this.projectId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(child: Center(child: Text(projectId.toString())));
  }
}
