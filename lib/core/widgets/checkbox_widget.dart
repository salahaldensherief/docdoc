import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CheckboxAndForgetPasswordWidget extends StatefulWidget {
  const CheckboxAndForgetPasswordWidget({super.key});

  @override
  State<CheckboxAndForgetPasswordWidget> createState() => _CheckboxAndForgetPasswordWidgetState();
}

class _CheckboxAndForgetPasswordWidgetState extends State<CheckboxAndForgetPasswordWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) => setState(() => isChecked = value!),
          activeColor: AppColors.primaryColor,
          checkColor: AppColors.backgroundColor,
          side: BorderSide(color: AppColors.grayColor),
        ),
         Text('Remember me',style:TextStyles.regular.copyWith(
           color: AppColors.grayColor
         ) ,),
        const Spacer(),
        TextButton(onPressed: (){}, child: Text('Forget Password?',style:TextStyles.regular.copyWith(
           color: AppColors.primaryColor
         ) ,))
        
      ],
    );
  }
}
