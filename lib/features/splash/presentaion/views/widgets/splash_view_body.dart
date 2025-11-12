import 'package:docdoc/core/utils/images_data.dart';
import 'package:docdoc/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  SvgPicture.asset(ImagesData.logo,)
      ),
    );
  }

  void excuteNavigation() async {
    // bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    // String? token = Prefs.getString('auth_token');

    Future.delayed(const Duration(seconds: 3), () {
      // if (!isOnBoardingViewSeen) {
      //   Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      // } else if (token != null && token.isNotEmpty) {
      //   Navigator.pushReplacementNamed(context, BottomNavBar.routeName);
      // }
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);

    });
  }
}
