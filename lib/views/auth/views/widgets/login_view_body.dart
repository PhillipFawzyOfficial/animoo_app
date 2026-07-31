import 'package:animoo_app/core/utils/app_images.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Center(child: Image.asset(AppImages.logo, width: 72)),
          SizedBox(height: 9.15),
          Text(
            AppStrings.login,
            style: TextStyle(
              fontSize: 38,
              fontFamily: 'Otama-ep',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
