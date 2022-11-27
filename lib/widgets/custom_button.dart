import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(
              width - 30,
              50,
            ),
            backgroundColor: Colors.white24),
      ),
    );
  }
}
