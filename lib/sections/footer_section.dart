import 'package:my_portfolio/widgets/url_button.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UrlButton('https://github.com/EdwingVeraDuran'),
        Gap(24),
        Text('© 2025 Edwing Vera. All rights reserved.'),
      ],
    );
  }
}
