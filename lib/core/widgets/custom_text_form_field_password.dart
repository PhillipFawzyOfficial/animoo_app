import 'package:animoo_app/core/utils/app_colors.dart';
import 'package:animoo_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldPassword extends StatelessWidget {
  const CustomTextFormFieldPassword({
    super.key,
    required this.hint,
    required this.obscureText,
    required this.controller,
    required this.onPressed,
  });

  final String hint;
  final bool obscureText;
  final void Function() onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please $hint';
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_red_eye),
        ),
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
