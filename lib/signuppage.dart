import 'package:flutter/material.dart';
import 'package:loginpage/SignInPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage.SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,// it is for vertical
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),

                //------------Sign Up Text-------------------------
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      label: Text('Phone/Email id'),
                      prefixIcon: Icon(Icons.mail),
                      fillColor: Colors.grey[250],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      label: Text('Full Name'),
                      prefixIcon: Icon(Icons.person),
                      fillColor: Colors.grey[250],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      label: Text('Password'),
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Colors.grey[250],
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;// when the button is tap it change the value of the isChecked to opposite which is false by default and changed to True value
                        });
                      },
                      shape: const CircleBorder(),
                      side: BorderSide(color: Colors.grey),
                    ),
                    //
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I have Read And Agree To',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          TextSpan(
                            text: ' User Agreement Privacy Policy',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),

                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Container(
                    child: Text('OR',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,size: 40,),
                    SizedBox(width: 20,),
                    Icon(Icons.apple,size: 50,),
                    SizedBox(width: 20,),
                    Image.network(
                      'https://images.freeimages.com/image/large-previews/f35/x-twitter-logo-on-black-circle-5694247.png?fmt=webp&h=350',
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Joined Us Before?',style: TextStyle(fontSize: 16),),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:
                    Text('Sign In',style: TextStyle(color: Colors.blue,fontSize: 16),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
