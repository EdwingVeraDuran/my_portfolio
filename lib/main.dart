import 'package:flutter/foundation.dart';
import 'package:my_portfolio/core/router/app_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorSchemes.darkGreen(), radius: 1),
      routerConfig: appRouter,
    );
  }
}
