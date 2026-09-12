import 'package:animoo_app/core/utils/app_style.dart';
import 'package:animoo_app/views/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimooApp());
}

class AnimooApp extends StatelessWidget {
  const AnimooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonst.poppins,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      ),
      home: SplashView(),
    );
  }
}
