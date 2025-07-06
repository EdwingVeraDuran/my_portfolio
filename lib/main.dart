import 'package:my_portfolio/pages/home_page.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorSchemes.darkGreen(), radius: 1),
      home: HomePage(),
    );
  }
}
