import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ViewButton extends StatelessWidget {
  final int projectId;
  const ViewButton(this.projectId, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.outline(
      icon: Icon(LucideIcons.eye),
      onPressed:
          () => context.goNamed(
            'projectDetails',
            pathParameters: {'id': projectId.toString()},
          ),
    );
  }
}
