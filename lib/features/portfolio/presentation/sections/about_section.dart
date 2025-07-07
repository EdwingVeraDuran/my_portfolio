import 'package:my_portfolio/features/portfolio/presentation/widgets/about_title.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AboutTitle(),
        Gap(32),
        Container(
          constraints: BoxConstraints(maxWidth: 700),
          child:
              Text(
                'I\'m a civil engineering student who enjoys coding in Python and Flutter. '
                'This is a minimal portfolio to showcase my projects and side work.',
                textAlign: TextAlign.center,
              ).large.mono.medium.italic,
        ),
      ],
    );
  }
}
