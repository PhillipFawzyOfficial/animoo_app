import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/views/auth/views/forget_password_view.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForgetPasswordView()),
          );
        },
        child: Text(AppStrings.forgetPassword, style: AppStyle.size12underline),
      ),
    );
  }
}
