abstract class LoginRepo {
  Future<bool> login(String email, String password);
  Future<void> logout();
  Future<bool> hasSession();
  void listenToAuthChanges(void Function(bool isLoggedIn) callback);
}
