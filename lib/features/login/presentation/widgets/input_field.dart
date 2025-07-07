import 'package:shadcn_flutter/shadcn_flutter.dart';

class InputField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final bool isPassword;
  const InputField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label).semiBold.small,
        Gap(4),
        TextField(
          placeholder: Text(placeholder),
          controller: controller,
          features: isPassword ? [InputFeature.passwordToggle()] : [],
        ),
      ],
    );
  }
}
