// Flutter imports:
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/features/auth/signup/presentation/views/signup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

// Project imports:


class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Dont Have an acount?  ',

          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap= (){
              Navigator.pushNamed(context, SignupView.routeName);
            },
            text: 'SignUp',style: TextStyles.medium.copyWith(
            color: AppColors.primaryColor
          ),),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
