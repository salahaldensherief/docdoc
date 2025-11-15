// Flutter imports:
import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/core/utils/images_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:

class SocialLoginBotton extends StatelessWidget {
  const SocialLoginBotton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(

            width: 46.w,
            height: 46.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white10Color,
            ),
            child: Padding(
              padding:  EdgeInsets.all(5.0).r,
              child: SvgPicture.asset(

                ImagesData.googleIcon,

              ),
            ),
          ),
        ),
        SizedBox(width: 40.w),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 46.w,
            height: 46.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white10Color,
            ),

            child: Padding(
              padding:  EdgeInsets.all(5.0).r,
              child: SvgPicture.asset(
                ImagesData.facebookIcon,

              ),
            ),
          ),
        ),
      ],
    );
  }
}
