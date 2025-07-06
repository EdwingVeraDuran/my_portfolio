import 'package:my_portfolio/sections/about_section.dart';
import 'package:my_portfolio/widgets/hidden_scroll.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: ScrollConfiguration(
        behavior: HiddenScroll(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [AboutSection(), Gap(64), Divider()],
          ),
        ),
      ),
    );
  }
}
