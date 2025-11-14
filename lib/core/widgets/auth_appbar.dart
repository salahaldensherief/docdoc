import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthAppbar extends StatelessWidget {
  const AuthAppbar({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bold.copyWith(
            fontSize: 24.sp,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          subtitle,
          style: TextStyles.regular.copyWith(
            fontSize: 14.sp,
            color: AppColors.grayColor,
          ),
        ),
      ],
    );
  }
}
