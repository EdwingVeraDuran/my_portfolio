import 'package:shadcn_flutter/shadcn_flutter.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title).x4Large.bold.mono.inlineCode;
  }
}
