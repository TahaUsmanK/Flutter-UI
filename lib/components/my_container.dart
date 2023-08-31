import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final VoidCallback? onTap;
  final String imagePath;

  MyContainer({Key? key, required this.onTap, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Image.asset(
            imagePath,
            height: 40,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 8),
          ),
        ),
      ),
    );
  }
}
