import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_elevated_button.dart';
import 'package:animoo_app/views/auth/views/otp_view.dart';
import 'package:animoo_app/views/auth/views/widgets/label_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.forgetYourPassword, style: AppStyle.appBarTitle),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              AppStrings
                  .pleaseEnterTheEmailAddressAssociatedWithYourAccountAndWellSendYouOTPToResetYourPassword,
              style: AppStyle.subtitleAuthStyle,
            ),
          ),
          SizedBox(height: 58),
          LabelTextField(
            title: AppStrings.email,
            hint: AppStrings.enterYourEmailAddress,
            keyboardType: TextInputType.emailAddress,
            controller: TextEditingController(),
          ),
          SizedBox(height: 151),
          CustomElevatedButton(
            text: AppStrings.sendCode,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtpView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
