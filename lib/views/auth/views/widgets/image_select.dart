import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ImageSelect extends StatelessWidget {
  const ImageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.uploadImageForYourProfile, style: AppStyle.labelStyle),
        SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              strokeWidth: 1.5,
              color: AppColors.primaryColor,
              radius: Radius.circular(10),
              dashPattern: [2, 2],
              padding: EdgeInsets.all(16),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image, size: 28, color: AppColors.primaryColor),
                  SizedBox(height: 16),
                  Text(AppStrings.selectFile, style: AppStyle.imageSelect),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
