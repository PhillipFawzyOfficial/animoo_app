import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static final TextStyle titleAuthStyle = TextStyle(
    fontSize: 38,
    fontFamily: AppFonst.otamaEp,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle labelStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.grayColor,
  );
  static final TextStyle hintStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.hintColor,
  );
  static final TextStyle size12underline = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    color: AppColors.primaryColor,
  );

  static final TextStyle imageSelect = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
}

class AppFonst {
  static const String otamaEp = 'Otama-ep';
  static const String poppins = 'Poppins';
}
