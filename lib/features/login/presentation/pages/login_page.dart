import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/shared/widgets/page_base.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_bloc.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_event.dart';
import 'package:my_portfolio/features/login/presentation/bloc/login_state.dart';
import 'package:my_portfolio/features/login/presentation/widgets/input_field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) => context.read<LoginBloc>().add(
    LoginSubmitEvent(emailController.text, passwordController.text),
  );

  @override
  Widget build(BuildContext context) {
    return PageBase(
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            context.goNamed('admin');
          }
          if (state.status == LoginStatus.failure) {
            showToast(
              context: context,
              location: ToastLocation.bottomRight,
              builder:
                  (context, overlay) =>
                      buildToast(context, overlay, state.errorMessage!),
            );
          }
        },
        builder: (context, state) {
          if (state.status == LoginStatus.loading) {
            return CircularProgressIndicator();
          }

          return SizedBox(
            width: 350,
            child:
                Card(
                  child: Column(
                    children: [
                      Text('Admin Panel').semiBold.x2Large,
                      Gap(24),
                      InputField(
                        label: 'Email',
                        placeholder: 'example@mail.com',
                        controller: emailController,
                      ),
                      Gap(16),
                      InputField(
                        label: 'Password',
                        placeholder: 'password123',
                        controller: passwordController,
                        isPassword: true,
                        onSubmitted: (value) => login(context),
                      ),
                      Gap(24),
                      PrimaryButton(
                        child: Text('Login'),
                        onPressed: () => login(context),
                      ),
                    ],
                  ),
                ).intrinsicHeight(),
          );
        },
      ),
    );
  }

  Widget buildToast(
    BuildContext context,
    ToastOverlay overlay,
    String message,
  ) {
    return SurfaceCard(
      child: Basic(title: Text('Error'), subtitle: Text(message)),
    );
  }
}
