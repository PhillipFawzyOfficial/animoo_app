import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/core/widgets/custom_text_form_field_password.dart';
import 'package:flutter/material.dart';

class LabelTextFieldPassword extends StatelessWidget {
  const LabelTextFieldPassword({
    super.key,
    required this.title,
    required this.hint,
    this.obscureText = true,
    required this.onPressed,
    required this.controller,
  });

  final String title;
  final String hint;
  final bool obscureText;
  final void Function() onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.labelStyle),
        SizedBox(height: 6),
        CustomTextFormFieldPassword(
          controller: controller,
          obscureText: obscureText,
          hint: hint,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
