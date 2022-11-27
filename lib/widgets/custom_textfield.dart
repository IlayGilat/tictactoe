import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 0,
            spreadRadius: 3,
          )
        ],
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
            fillColor: bgColor,
            filled: true,
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
