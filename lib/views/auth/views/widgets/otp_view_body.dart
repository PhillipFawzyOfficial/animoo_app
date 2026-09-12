import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_otp_pinput.dart';
import 'package:flutter/material.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.otpVerfication, style: AppStyle.appBarTitle),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                AppStrings.pleaseEnterThe5DigitCodeSentYourPhoneNumber,
                style: AppStyle.subtitleAuthStyle,
              ),
            ),
            SizedBox(height: 54),
            CustomOtpPinput(),
          ],
        ),
      ),
    );
  }
}
