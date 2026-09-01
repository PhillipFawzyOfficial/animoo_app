import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class PasswordRules extends StatelessWidget {
  const PasswordRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.pleaseAddAllNecessaryCharactersToCreateSafePassword,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: AppColors.errorColor,
          ),
        ),
        SizedBox(),
        SizedBox(height: 11),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.circle, size: 5, color: AppColors.errorColor),
                SizedBox(width: 2),
                Text(
                  AppStrings.passwordRules[index],
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: AppColors.errorColor,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 5),
          itemCount: AppStrings.passwordRules.length,
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
