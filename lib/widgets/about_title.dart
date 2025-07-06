import 'package:shadcn_flutter/shadcn_flutter.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return WrappedText(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Hi, I\'m'),
          Text(
            ' Edwing Vera',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    ).x4Large.bold.mono.inlineCode;
  }
}
