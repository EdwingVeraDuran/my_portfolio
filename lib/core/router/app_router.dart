import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/pages/not_found_page.dart';
import 'package:my_portfolio/features/admin_panel/presentation/pages/admin_page.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';
import 'package:my_portfolio/features/login/presentation/pages/login_page.dart';
import 'package:my_portfolio/features/portfolio/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    final validRoutes = ['/', '/login', '/admin', '/404'];

    if (!validRoutes.contains(state.uri.path)) {
      return '/404';
    }

    final loggingIn = state.fullPath == '/login';
    bool isAuthenticated = context.read<LoginBloc>().isAuthenticated;

    if (!isAuthenticated && !loggingIn && state.fullPath == '/admin') {
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
      path: '/404',
      name: '404',
      builder: (context, state) => const NotFoundPage(),
    ),
  ],
);
