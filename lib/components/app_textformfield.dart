import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController controller;
  final String label;
  final String? Function(String?) validator;

  const AppTextFormField(
      {super.key,
      required this.controller,
      required this.label,
      required this.obscureText,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            border: const UnderlineInputBorder()),
      validator: validator,
    );
  }
}
