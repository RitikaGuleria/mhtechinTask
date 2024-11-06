import 'package:flutter/material.dart';
import 'package:mhtechin_task/core/theme/theme.dart';
import 'package:mhtechin_task/presentation/screens/loginAndSignupPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const LoginAndSignUpPages(),
    );
  }
}

