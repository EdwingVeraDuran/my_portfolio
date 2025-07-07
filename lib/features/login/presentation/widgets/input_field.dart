import 'package:my_portfolio/core/shared/widgets/field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class InputField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;
  final void Function(String)? onSubmitted;
  const InputField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Field(
      label: label,
      child: TextField(
        placeholder: Text(placeholder),
        controller: controller,
        features: isPassword ? [InputFeature.passwordToggle()] : [],
        onSubmitted: onSubmitted,
      ),
    );
  }
}
