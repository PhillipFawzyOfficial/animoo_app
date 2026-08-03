import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/views/auth/views/widgets/login_view_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: SizedBox(
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                  text: AppStrings.dontHaveAnAccount,
                  style: TextStyle(color: Color(0xff828282)),
                ),
                TextSpan(text: ' '),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: AppStrings.signUpNow,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
