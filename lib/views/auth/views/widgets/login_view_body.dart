import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_images.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/widgets/custom_elevated_button.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field.dart';
import 'package:animoo_app/views/auth/views/widgets/forget_password.dart';
import 'package:animoo_app/views/auth/views/widgets/title_auth.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AppImages.logo, width: 72)),
            SizedBox(height: 9.15),
            TitleAuth(),
            Text(
              AppStrings.email,
              style: TextStyle(fontSize: 16, color: AppColors.grayColor),
            ),
            SizedBox(height: 6),
            CustomTextFormField(hint: AppStrings.enterYourEmailAddress),
            SizedBox(height: 16),
            Text(
              AppStrings.password,
              style: TextStyle(fontSize: 16, color: AppColors.grayColor),
            ),
            SizedBox(height: 6),
            CustomTextFormField(
              obscureText: true,
              hint: AppStrings.enterYourPassword,
              suffix: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
            ForgetPassword(),
            SizedBox(height: 31),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
