import 'package:flutter/material.dart';

class AppTextPS extends StatelessWidget {
  final String text;
  const AppTextPS({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15,
          fontFamily: "Helvetica",
          color: Theme.of(context).colorScheme.primary),
    );
  }
}

class AppTextPM extends StatelessWidget {
  final String text;
  const AppTextPM({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25,
          fontFamily: "Helvetica",
          color: Theme.of(context).colorScheme.primary),
    );
  }
}

class AppTextNS extends StatelessWidget {
  final String text;
  const AppTextNS({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15,
          fontFamily: "Helvetica",
      color: Colors.grey.shade900)
    );
  }
}
