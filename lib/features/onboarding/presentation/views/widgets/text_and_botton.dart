import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/features/auth/login/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndBotton extends StatelessWidget {
  const TextAndBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Schedule your dental appointments easily with\nDr. Muhammed Magdy Sakr',
          style: TextStyles.regular.copyWith(
            fontSize: 14.sp,
            color: AppColors.grayColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24.h),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 100.w, vertical: 14.h),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
            ),
          ),
          onPressed: () {
Navigator.pushReplacementNamed(context, LoginView.routeName);
          },
          child: Text(
            'Get Started',
            style: TextStyles.semiBold.copyWith(
              fontSize: 16.sp,
              color: AppColors.backgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
