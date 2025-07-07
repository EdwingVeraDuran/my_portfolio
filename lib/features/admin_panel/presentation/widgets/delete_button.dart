import 'package:shadcn_flutter/shadcn_flutter.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  //TODO: Add delete confirm dialog

  @override
  Widget build(BuildContext context) {
    return IconButton.destructive(
      icon: Icon(LucideIcons.trash),
      onPressed: () {},
    );
  }
}
