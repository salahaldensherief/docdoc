// Flutter imports:
import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key, });
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                text: 'By logging, you agree to our  ',
                style: TextStyles.semiBold.copyWith(
                  color: AppColors.lightGrayColor,
                    fontSize: 12.sp
                ),
              ),
              TextSpan(
                text: 'Terms & Conditions ',
                style: TextStyles.semiBold.copyWith(
                  color: AppColors.lightBlackColor,
                    fontSize: 12.sp

                ),
              ),
              TextSpan(
                text: 'and ',
                style: TextStyles.semiBold.copyWith(
                  color: AppColors.lightGrayColor,
                    fontSize: 12.sp

                ),
              ),
              TextSpan(

                text: ' PrivacyPolicy',
                style: TextStyles.semiBold.copyWith(
                  color:AppColors.lightBlackColor,
                    fontSize: 12.sp

                ),
              ),
            ],
          ),
        );
  }
}
