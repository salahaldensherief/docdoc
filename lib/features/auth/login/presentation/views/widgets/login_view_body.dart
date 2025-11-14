import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:docdoc/core/widgets/auth_appbar.dart';
import 'package:docdoc/core/widgets/checkbox_widget.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/core/widgets/custom_text_field.dart';
import 'package:docdoc/core/widgets/dont_have_an_account_widget.dart';
import 'package:docdoc/core/widgets/have_an_account.dart';
import 'package:docdoc/core/widgets/or_divider.dart';
import 'package:docdoc/core/widgets/passwoed_field.dart';
import 'package:docdoc/core/widgets/social_login_botton.dart';
import 'package:docdoc/core/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24).w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 20.h),
                AuthAppbar(
                  title: 'Welcome Back!',
                  subtitle:
                      "We're excited to have you back, can't wait to\n see what you've been up to since you last\n logged in.",
                ),
                SizedBox(height: 24.h),
                CustomTextFormField(
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.h),
                PasswordField(hintText: 'Password'),
                SizedBox(height: 16.h),
                CheckboxAndForgetPasswordWidget(),
                SizedBox(height: 16.h),
                CustomButton(
                  onPressed: () {},
                  text: 'Login',
                  color: AppColors.primaryColor,
                  colorSide: AppColors.primaryColor,
                  fontColor: AppColors.backgroundColor,
                ),
                SizedBox(height: 20.h),
                OrDivider(),
                SizedBox(height: 20.h),
                SocialLoginBotton(onPressed: () {}),
                SizedBox(height: 24.h),
                TermsAndConditions(),
                SizedBox(height: 24.h),
                DontHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
