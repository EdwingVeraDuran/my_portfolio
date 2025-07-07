sealed class LoginEvent {}

class LoginSubmitEvent extends LoginEvent {
  final String email;
  final String password;
  LoginSubmitEvent(this.email, this.password);
}

class LogOutEvent extends LoginEvent {}
