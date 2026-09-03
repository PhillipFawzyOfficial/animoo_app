import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field.dart';
import 'package:animoo_app/views/auth/views/widgets/password_rules.dart';
import 'package:dotted_border/dotted_border.dart';
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
            controller: TextEditingController(),
            hint: AppStrings.enterYourFirstName,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.lastName, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            hint: AppStrings.enterYourLastName,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.email, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.phone, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            hint: AppStrings.enterYourPhone,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(AppStrings.password, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            obscureText: true,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
            hint: AppStrings.enterYourPassword,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 8),
          PasswordRules(),

          Text(AppStrings.confirmPassword, style: AppStyle.labelStyle),
          SizedBox(height: 6),
          CustomTextFormField(
            controller: TextEditingController(),
            obscureText: true,
            suffix: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
            ),
            hint: AppStrings.confirmPassword,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          Text(
            'Upload Image For Your Profile',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                strokeWidth: 1.5,
                color: AppColors.primaryColor,
                radius: Radius.circular(10),
                dashPattern: [2, 2],
                padding: EdgeInsets.all(16),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 28, color: AppColors.primaryColor),
                    SizedBox(height: 16),
                    Text(
                      'Select file',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
