import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          AppStrings.forgetPassword,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
