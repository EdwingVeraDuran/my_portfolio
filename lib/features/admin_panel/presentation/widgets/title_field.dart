import 'package:my_portfolio/core/shared/widgets/field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class TitleField extends StatelessWidget {
  final TextEditingController? controller;
  const TitleField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Field(
      label: 'Title',
      child: SizedBox(width: 250, child: TextField(controller: controller)),
    );
  }
}
