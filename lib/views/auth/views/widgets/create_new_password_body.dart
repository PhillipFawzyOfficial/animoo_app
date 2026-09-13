import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_elevated_button.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field_password.dart';
import 'package:animoo_app/views/auth/views/widgets/password_rules.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(AppStrings.otpVerfication, style: AppStyle.appBarTitle),
            LabelTextFieldPassword(
              title: AppStrings.newPassword,
              hint: AppStrings.enterYourNewPassword,
              obscureText: true,
              onPressed: () {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 8),
            PasswordRules(),
            SizedBox(height: 18),
            LabelTextFieldPassword(
              title: AppStrings.confirmPassword,
              hint: AppStrings.confirmPassword,
              obscureText: true,
              onPressed: () {},
              controller: TextEditingController(),
            ),
            SizedBox(height: 82),

            CustomElevatedButton(text: 'Submit', onPressed: () {}),
            SizedBox(height: 82),
          ],
        ),
      ),
    );
  }
}
