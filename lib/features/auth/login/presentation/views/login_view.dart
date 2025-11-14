import 'package:docdoc/features/auth/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const String routeName = 'loginview';
  @override
  Widget build(BuildContext context) {
    return LoginViewBody();
  }
}
