import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/features/login/domain/repos/login_repo.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_event.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo loginRepo;

  LoginBloc(this.loginRepo) : super(LoginState(status: LoginStatus.initial)) {
    on<LoginSubmitEvent>(_onLoginSubmitted);
    on<LogOutEvent>(_onLogOut);
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
}
