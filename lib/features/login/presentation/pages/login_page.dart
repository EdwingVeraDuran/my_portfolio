import 'package:my_portfolio/features/login/presentation/widgets/input_field.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: Center(
        child: SizedBox(
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
                    ),

                    Gap(24),
                    PrimaryButton(child: Text('Login'), onPressed: () {}),
                  ],
                ),
              ).intrinsicHeight(),
        ),
      ),
    );
  }
}
