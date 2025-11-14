import 'package:docdoc/core/routing/ongenerate_routes.dart';
import 'package:docdoc/features/auth/login/presentation/views/login_view.dart';
import 'package:docdoc/features/auth/signup/presentation/views/signup_view.dart';
import 'package:docdoc/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:docdoc/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => SignupView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
