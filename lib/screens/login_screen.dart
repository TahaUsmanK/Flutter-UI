import 'package:flutter/material.dart';
import 'package:login_ui_v2/components/my_button.dart';
import 'package:login_ui_v2/components/my_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                SizedBox(
                  height: 110,
                ),
                Icon(
                  Icons.lock,
                  size: 110,
                ),
                SizedBox(
                  height: 20,
                ),
                // username textfield
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _EmailController,
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        fillColor: Colors.grey.shade100,
                        focusColor: Colors.grey.shade100,
                        enabledBorder: OutlineInputBorder(
                            gapPadding: 10,
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
                // password textfield
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: _PasswordController,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            gapPadding: 10,
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
                // forgot password

                Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                // signin button
                SizedBox(
                  height: 15,
                ),
                SignInButton(
                  onTap: () {},
                ),

                // not a member? register now
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    Text(
                      'Register Now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                // Or Continue with
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),
                // google/apple logo
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyContainer(
                        onTap: () {}, imagePath: 'lib/images/google.png'),
                    SizedBox(width: 20),
                    MyContainer(onTap: () {}, imagePath: 'lib/images/apple.png')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
