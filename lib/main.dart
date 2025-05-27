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
      debugShowCheckedModeBanner: false,// it is used to hide the debug banner which appears at the top right of the bottom
      home: SignInPage(),//home is used to display the first thing you see on the display
      // here we created three files one for the 1.SignInPage 2.SignUpPage 3.Forget password
    );
  }
}
