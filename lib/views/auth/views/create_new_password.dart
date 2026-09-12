import 'package:animoo_app/core/utils/app_strings.dart';
import 'package:animoo_app/views/auth/views/widgets/create_new_password_body.dart';
import 'package:animoo_app/views/auth/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: AppStrings.cancel),
      body: CreateNewPasswordBody(),
    );
  }
}
