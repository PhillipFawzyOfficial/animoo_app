import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field_password.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          LabelTextField(
            title: AppStrings.email,
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
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
        ],
      ),
    );
  }
}
