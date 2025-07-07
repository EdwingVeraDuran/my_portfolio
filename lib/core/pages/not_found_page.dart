import 'package:shadcn_flutter/shadcn_flutter.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('404').mono.x7Large.bold.inlineCode,
          Gap(32),
          Text('Page not found.').large,
        ],
      ),
    );
  }
}
