import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/login/domain/repos/login_repo.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_event.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo loginRepo;

  LoginBloc(this.loginRepo) : super(LoginState(status: LoginStatus.initial)) {
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<LoginSubmitEvent>(_onLoginSubmitted);
    on<LogOutEvent>(_onLogOut);

    _listenToAuthChanges();
    add(CheckAuthStatusEvent());
  }

  bool get isAuthenticated => state.status == LoginStatus.success;

  Future<void> _onLoginSubmitted(
    LoginSubmitEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.loading));

    final success = await loginRepo.login(event.email, event.password);

    emit(
      success
          ? state.copyWith(status: LoginStatus.success)
          : state.copyWith(
            status: LoginStatus.failure,
            errorMessage: 'Error trying to login',
          ),
    );
  }

  Future<void> _onLogOut(LogOutEvent event, Emitter<LoginState> emit) async {
    await loginRepo.logout();

    emit(state.copyWith(status: LoginStatus.initial));
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatusEvent event,
    Emitter<LoginState> emit,
  ) async {
    final hasSession = await loginRepo.hasSession();
    if (hasSession) emit(state.copyWith(status: LoginStatus.success));
  }

  void _listenToAuthChanges() {
    loginRepo.listenToAuthChanges((isLoggedIn) {
      final status = isLoggedIn ? LoginStatus.success : LoginStatus.initial;
      if (state.status != status) {
        add(isLoggedIn ? CheckAuthStatusEvent() : LogOutEvent());
      }
    });
  }
}
