import 'package:shadcn_flutter/shadcn_flutter.dart';

class ViewButton extends StatelessWidget {
  final int projectId;
  const ViewButton(this.projectId, {super.key});

  //TODO: Add route for view/edit -> /admin/project/{projectId}

  @override
  Widget build(BuildContext context) {
    return IconButton.outline(icon: Icon(LucideIcons.eye), onPressed: () {});
  }
}
