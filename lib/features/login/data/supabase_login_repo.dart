import 'package:my_portfolio/features/login/domain/repos/login_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseLoginRepo implements LoginRepo {
  final supabaseAuth = Supabase.instance.client.auth;

  @override
  Future<bool> login(String email, String password) async {
    try {
      final authResponse = await supabaseAuth.signInWithPassword(
        email: email,
        password: password,
      );

      return authResponse.session != null;
    } catch (e) {
      throw Exception('Error trying to login: $e');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await supabaseAuth.signOut();
    } catch (e) {
      throw Exception('Error trying to logout: $e');
    }
  }

  @override
  Future<bool> hasSession() async => supabaseAuth.currentSession != null;

  @override
  void listenToAuthChanges(void Function(bool isLoggedIn) callback) =>
      supabaseAuth.onAuthStateChange.listen((data) {
        final AuthChangeEvent event = data.event;
        final Session? session = data.session;

        if (event == AuthChangeEvent.signedOut || session == null) {
          callback(false);
        } else if (event == AuthChangeEvent.signedIn) {
          callback(true);
        }
      });
}
