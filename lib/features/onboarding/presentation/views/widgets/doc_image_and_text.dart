import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/core/utils/images_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.backgroundColor,
                AppColors.backgroundColor.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(
            ImagesData.onBoardingImage1,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 450.h,
          ),
        ),
        Positioned(
          bottom: 30.h,
          left: 0.w,
          right: 0.w,
          child: Text(
            'Step Into\n Healthy Teeth',
            style: TextStyles.bold.copyWith(
              fontSize: 32.sp,
              color: AppColors.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
