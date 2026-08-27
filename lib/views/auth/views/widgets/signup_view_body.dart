import 'package:animoo_app/core/utils/app_images.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/views/auth/views/widgets/title_auth.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 18),
        child: Column(
          children: [
            Center(child: Image.asset(AppImages.logo)),
            TitleAuth(title: AppStrings.signUp),
          ],
        ),
      ),
    );
  }
}
