import 'package:flutter/material.dart';
import 'package:loginpage/SignInPage.dart';
import 'package:loginpage/signuppage.dart';

void main() {
  runApp(const LoginPageApp());
}
class LoginPageApp extends StatelessWidget {
  const LoginPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
