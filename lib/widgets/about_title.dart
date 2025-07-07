import 'package:shadcn_flutter/shadcn_flutter.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return WrappedText(
      child:
          isMobile
              ? Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hi, I\'m'),
                  Text(
                    'Edwing Vera',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              )
              : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hi, I\'m'),
                  Text(
                    ' Edwing Vera',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
    ).x4Large.bold.mono.inlineCode;
  }
}
