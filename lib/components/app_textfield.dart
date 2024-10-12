import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController controller;
  final String label;

  const AppTextField(
      {super.key,
      required this.controller,
      required this.label,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            border: const UnderlineInputBorder())
    );
  }
}
