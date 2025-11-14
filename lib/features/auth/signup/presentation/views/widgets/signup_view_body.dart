import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/widgets/auth_appbar.dart';
import 'package:docdoc/core/widgets/custom_button.dart';
import 'package:docdoc/core/widgets/custom_text_field.dart';
import 'package:docdoc/core/widgets/have_an_account.dart';
import 'package:docdoc/core/widgets/or_divider.dart';
import 'package:docdoc/core/widgets/social_login_botton.dart';
import 'package:docdoc/core/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24).w,

          child: Column(
            children: [
              SizedBox(height: 20.h),

              AuthAppbar(
                title: 'Create Account',
                subtitle:
                    "Sign up now and start exploring all that our\n app has to offer. We're excited to welcome\n you to our community!",
              ),
              SizedBox(height: 12.h),

              CustomTextFormField(
                hintText: 'Email Address',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 12.h),
              CustomTextFormField(
                textInputType: TextInputType.visiblePassword,

                hintText: 'Password',
              ),
              SizedBox(height: 12.h),

              CustomTextFormField(
                hintText: 'Confirm Password',
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 12.h),

              CustomTextFormField(
                hintText: 'Phone Number',
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: 20.h),

              CustomButton(
                onPressed: () {},
                text: 'Create Account',
                color: AppColors.primaryColor,
                colorSide: AppColors.primaryColor,
                fontColor: AppColors.backgroundColor,
              ),
              SizedBox(height: 10.h),
              OrDivider(),
              SizedBox(height: 10.h),
              SocialLoginBotton(onPressed: (){},),
              SizedBox(height: 20.h),
              TermsAndConditions(),
              SizedBox(height: 20.h),
              HaveAnAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}
