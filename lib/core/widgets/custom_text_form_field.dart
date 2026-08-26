import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.suffix,
    this.obscureText = false,
    required this.keyboardType,
  });

  final String hint;
  final Widget? suffix;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please $hint';
        }
        return null;
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffix,
        filled: true,
        fillColor: Color(0xffF6F6F6),
        hint: Text(hint),
        hintStyle: AppStyle.hintStyle,
        border: buildBorder(borderColor: Colors.black),
        enabledBorder: buildBorder(borderColor: Colors.black),
        focusedBorder: buildBorder(borderColor: AppColors.primaryColor),
        errorBorder: buildBorder(borderColor: AppColors.errorColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
