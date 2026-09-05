import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/views/auth/views/widgets/image_select.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field_password.dart';
import 'package:animoo_app/views/auth/views/widgets/password_rules.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelTextField(
            title: AppStrings.firstName,
            hint: AppStrings.enterYourFirstName,
            keyboardType: TextInputType.text,
            controller: TextEditingController(),
          ),
          SizedBox(height: 16),
          LabelTextField(
            title: AppStrings.lastName,
            hint: AppStrings.enterYourLastName,
            keyboardType: TextInputType.text,
            controller: TextEditingController(),
          ),
          SizedBox(height: 16),
          LabelTextField(
            title: AppStrings.email,
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
          ),
          SizedBox(height: 16),
          LabelTextField(
            title: AppStrings.phone,
            hint: AppStrings.enterYourPhone,
            keyboardType: TextInputType.number,
            controller: TextEditingController(),
          ),
          SizedBox(height: 16),
          LabelTextFieldPassword(
            title: AppStrings.password,
            hint: AppStrings.enterYourPassword,
            obscureText: true,
            onPressed: () {},
            controller: TextEditingController(),
          ),
          SizedBox(height: 8),
          PasswordRules(),
          LabelTextFieldPassword(
            title: AppStrings.confirmPassword,
            hint: AppStrings.confirmPassword,
            obscureText: true,
            onPressed: () {},
            controller: TextEditingController(),
          ),
          SizedBox(height: 16),
          ImageSelect(),
        ],
      ),
    );
  }
}
