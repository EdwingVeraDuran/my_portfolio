import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/pages/not_found_page.dart';
import 'package:my_portfolio/core/router/login_bloc_refresh.dart';
import 'package:my_portfolio/features/admin_panel/presentation/pages/admin_page.dart';
import 'package:my_portfolio/features/admin_panel/presentation/pages/project_details_page.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';
import 'package:my_portfolio/features/login/presentation/pages/login_page.dart';
import 'package:my_portfolio/features/portfolio/presentation/pages/home_page.dart';

GoRouter createAppRouter(LoginBloc loginBloc) {
  return GoRouter(
    initialLocation: '/',
    refreshListenable: LoginBlocRefresh(loginBloc),
    redirect: (context, state) {
      final loggingIn = state.matchedLocation == '/login';
      final isAuthenticated = context.read<LoginBloc>().isAuthenticated;
      final isAdminRoute = state.matchedLocation.startsWith('/admin');

      if (!isAuthenticated && !loggingIn && isAdminRoute) {
        return '/login';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/admin',
        name: 'admin',
        builder: (context, state) => const AdminPage(),
      ),
      GoRoute(
        path: '/admin/projects/:id',
        name: 'projectDetails',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return ProjectDetailsPage(projectId: int.parse(id!));
        },
      ),
      GoRoute(
        path: '/404',
        name: '404',
        builder: (context, state) => const NotFoundPage(),
      ),
    ],
  );
}
