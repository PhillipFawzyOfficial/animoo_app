import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(AppStrings.forgetPassword, style: AppStyle.size12underline),
      ),
    );
  }
}
