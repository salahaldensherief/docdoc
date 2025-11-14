// Flutter imports:
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/features/auth/login/presentation/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

// Project imports:

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Already Have Account?  ',
            style: TextStyle(color: Colors.black),
          ),

          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, LoginView.routeName);
              },
            text: 'Login',
            style: TextStyles.medium.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
