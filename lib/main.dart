import 'package:flutter/foundation.dart';
import 'package:my_portfolio/core/services/supabase_service.dart';
import 'package:my_portfolio/core/util/injection_container.dart';
import 'package:my_portfolio/test.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseService.init();
  setup();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(const TestApp());
}
