// Flutter imports:
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/core/utils/images_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:

class SocialLoginBotton extends StatelessWidget {
  const SocialLoginBotton({super.key, required this.onPressed,});
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(
              ImagesData.googleIcon,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        SizedBox(width: 40.w),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 40.w,
            height: 40.h,
            child: SvgPicture.asset(
              ImagesData.facebookIcon,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),


      ],
    );
  }
}
