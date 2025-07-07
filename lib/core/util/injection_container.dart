import 'package:get_it/get_it.dart';
import 'package:my_portfolio/features/login/data/supabase_login_repo.dart';
import 'package:my_portfolio/features/login/domain/repos/login_repo.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  // Repository
  getIt.registerLazySingleton<LoginRepo>(() => SupabaseLoginRepo());

  // Bloc
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt<LoginRepo>()));
}
