import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final bool obscureText;
  final String hintText;
  final String labelText;
  const MyTextField(
      {Key? key,
      required this.obscureText,
      required this.hintText,
      required this.labelText})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
      ),
    );
  }
}
