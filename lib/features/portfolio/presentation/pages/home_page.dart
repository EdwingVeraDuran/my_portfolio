import 'package:my_portfolio/core/shared/widgets/page_base.dart';
import 'package:my_portfolio/features/portfolio/presentation/sections/about_section.dart';
import 'package:my_portfolio/features/portfolio/presentation/sections/footer_section.dart';
import 'package:my_portfolio/features/portfolio/presentation/sections/project_section.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AboutSection(),
          Gap(64),
          Divider(),
          Gap(64),
          ProjectSection(),
          Gap(64),
          FooterSection(),
        ],
      ),
    );
  }
}
