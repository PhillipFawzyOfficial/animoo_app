import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field.dart';
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
          Text(AppStrings.firstName, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            hint: AppStrings.enterYourFirstName,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.lastName, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            hint: AppStrings.enterYourLastName,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.email, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.phone, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            hint: AppStrings.enterYourPhone,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.password, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            obscureText: true,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
            hint: AppStrings.enterYourPassword,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.confirmPassword, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            obscureText: true,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
            hint: AppStrings.confirmPassword,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
