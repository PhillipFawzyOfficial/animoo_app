import 'package:animoo_app/views/auth/views/widgets/forget_password_app_bar.dart';
import 'package:animoo_app/views/auth/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ForgetPasswordAppBar(),
      body: ForgetPasswordViewBody(),
    );
  }
}
