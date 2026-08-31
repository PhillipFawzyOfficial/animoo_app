import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field.dart';
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
          Text(AppStrings.email, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.password, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            obscureText: true,
            hint: AppStrings.enterYourPassword,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
