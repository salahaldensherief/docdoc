// Flutter imports:
import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.lightGrayColor)),
        SizedBox(width: 18.w),
        Text(
          textAlign: TextAlign.center,
          'Or sign in with',
          style: TextStyles.semiBold.copyWith(color: AppColors.lightGrayColor),
        ),
        SizedBox(width: 18.w),

        Expanded(child: Divider(color: AppColors.lightGrayColor)),
      ],
    );
  }
}
