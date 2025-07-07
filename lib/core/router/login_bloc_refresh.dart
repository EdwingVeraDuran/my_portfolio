import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';

class LoginBlocRefresh extends ChangeNotifier {
  LoginBlocRefresh(LoginBloc bloc) {
    _subscription = bloc.stream.listen((event) => notifyListeners());
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
