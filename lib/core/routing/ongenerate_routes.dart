import 'package:docdoc/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:docdoc/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
