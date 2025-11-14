import 'package:docdoc/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.colorSide,
    required this.fontColor,
  });
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Color colorSide;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size(327.w, 45.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        backgroundColor: color,
        side: BorderSide(color: colorSide),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.bold.copyWith(fontSize: 16.sp, color: fontColor),
      ),
    );
  }
}
