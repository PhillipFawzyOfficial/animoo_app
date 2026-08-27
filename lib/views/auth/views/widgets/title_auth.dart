import 'package:animoo_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Center(child: Text(title, style: AppStyle.titleAuthStyle)),
    );
  }
}
