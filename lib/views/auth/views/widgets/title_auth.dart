import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Center(
        child: Text(AppStrings.login, style: AppStyle.titleAuthStyle),
      ),
    );
  }
}
