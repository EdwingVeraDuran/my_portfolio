import 'package:shadcn_flutter/shadcn_flutter.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 16,
      children: [
        OutlineButton(child: Text('Cancel'), onPressed: () {}),
        PrimaryButton(child: Text('Create'), onPressed: () {}),
      ],
    );
  }
}
