import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LabelTextField extends StatelessWidget {
  const LabelTextField({
    super.key,
    required this.title,
    required this.hint,
    required this.keyboardType,
    required this.controller,
  });
  final String title;
  final String hint;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.labelStyle),
        SizedBox(height: 6),
        CustomTextFormField(
          controller: controller,
          hint: hint,
          keyboardType: keyboardType,
        ),
      ],
    );
  }
}
