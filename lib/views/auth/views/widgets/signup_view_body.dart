import 'package:animoo_app/core/utils/app_images.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/widgets/custom_elevated_button.dart';
import 'package:animoo_app/views/auth/views/widgets/signup_form.dart';

import 'package:animoo_app/views/auth/views/widgets/title_auth.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppImages.logo, width: 72)),
              SizedBox(height: 9.15),
              TitleAuth(title: AppStrings.signUp),
              SignupForm(formKey: GlobalKey()),
              SizedBox(height: 31),
              CustomElevatedButton(text: AppStrings.signUp),
            ],
          ),
        ),
      ),
    );
  }
}
