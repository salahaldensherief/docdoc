import 'package:flutter/material.dart';
import 'package:docdoc/features/auth/signup/presentation/views/widgets/signup_view_body.dart';
class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const String routeName = 'signupview';
  @override
  Widget build(BuildContext context) {
    return  SignupViewBody();
  }
}
