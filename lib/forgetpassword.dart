import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Center(
          child: Column(
            children: [
              Text("Your Password is reset Successfully",style: TextStyle(fontSize: 50, fontFamily: 'Georgia'  ),)
            ],
          ),
        ),
      ) ,
    );
  }
}
