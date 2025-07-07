import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/router/app_router.dart';
import 'package:my_portfolio/core/services/supabase_service.dart';
import 'package:my_portfolio/core/util/injection_container.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseService.init();
  setup();
  if (kIsWeb) {
    usePathUrlStrategy();
  }
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: ShadcnApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorSchemes.darkGreen(), radius: 1),
        routerConfig: appRouter,
      ),
    );
  }
}
