import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  final VoidCallback? onTap;
  SignInButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 330,
        height: 70,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
