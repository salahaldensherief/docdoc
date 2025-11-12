import 'package:flutter/material.dart';

abstract class TextStyles {

  static TextStyle bold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
  static TextStyle semiBold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle regular = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle medium = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );


}
