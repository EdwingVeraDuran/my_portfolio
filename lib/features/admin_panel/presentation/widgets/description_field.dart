import 'package:my_portfolio/core/shared/widgets/field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class DescriptionField extends StatelessWidget {
  final TextEditingController? controller;
  const DescriptionField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Field(
      label: 'Description',
      child: TextArea(initialHeight: 120, controller: controller),
    );
  }
}
