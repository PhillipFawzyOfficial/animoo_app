import 'package:animoo_app/core/utils/app_images.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/widgets/custom_elevated_button.dart';
import 'package:animoo_app/views/auth/views/widgets/forget_password.dart';
import 'package:animoo_app/views/auth/views/widgets/login_form.dart';
import 'package:animoo_app/views/auth/views/widgets/title_auth.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(AppImages.logo, width: 72)),
              SizedBox(height: 9.15),
              TitleAuth(title: AppStrings.login),
              LoginForm(formKey: GlobalKey<FormState>()),
              ForgetPassword(),
              SizedBox(height: 31),
              CustomElevatedButton(text: AppStrings.login),
            ],
          ),
        ),
      ),
    );
  }
}
