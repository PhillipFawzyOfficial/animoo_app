import 'dart:developer';

import 'package:animoo_app/views/auth/views/create_new_password.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomOtpPinput extends StatelessWidget {
  const CustomOtpPinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Pinput(
          defaultPinTheme: PinTheme(
            // 72 = 18 * 4 (separatorBuilder - Number SizedBox)
            width: (MediaQuery.of(context).size.width - 72) / 5,
            height: (MediaQuery.of(context).size.width - 72) / 5,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffD9D9D9), width: 1),
            ),
          ),
          length: 5,
          separatorBuilder: (index) => const SizedBox(width: 18),
          keyboardType: TextInputType.number,
          onCompleted: (value) {
            log(value);
            //? remove this after add API and sent Function to OtpViewBody
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CreateNewPassword()),
            );
          },
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }
}
