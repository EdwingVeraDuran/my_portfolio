import 'package:my_portfolio/features/admin_panel/presentation/pages/admin_page.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorSchemes.darkGreen(), radius: 1),
      home: AdminPage(),
    );
  }
}
