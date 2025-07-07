import 'package:my_portfolio/features/login/domain/repos/login_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseLoginRepo extends LoginRepo {
  final supabaseAuth = Supabase.instance.client.auth;

  @override
  Future<bool> login(String email, String password) async {
    try {
      final authResponse = await supabaseAuth.signInWithPassword(
        email: email,
        password: password,
      );

      return authResponse.user?.aud == 'authenticated';
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
}
