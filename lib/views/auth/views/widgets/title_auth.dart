import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 90,
      child: Center(
        child: Text(
          AppStrings.login,
          style: TextStyle(
            fontSize: 38,
            fontFamily: 'Otama-ep',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
