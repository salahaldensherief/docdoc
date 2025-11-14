import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/core/utils/images_data.dart';
import 'package:docdoc/features/onboarding/presentation/views/widgets/doc_image_and_text.dart';
import 'package:docdoc/features/onboarding/presentation/views/widgets/doc_logo.dart';
import 'package:docdoc/features/onboarding/presentation/views/widgets/text_and_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           DocLogo(),
            DocImageAndText(),
            TextAndBotton()
          ],
        ),
      ),
    );
  }
}
