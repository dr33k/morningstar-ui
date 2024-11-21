import 'package:flutter/material.dart';

class AppTextPS extends StatelessWidget {
  final String text;
  const AppTextPS({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 17,
          fontFamily: "Helvetica",
          color: Theme.of(context).colorScheme.primary),
    );
  }
}

class AppTextIS extends StatelessWidget {
  final String text;
  const AppTextIS({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 17,
          fontFamily: "Helvetica",
          color: Theme.of(context).colorScheme.inversePrimary),
    );
  }
}

class AppTitlePS extends StatelessWidget {
  final String text;
  const AppTitlePS({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25,
          fontFamily: "Helvetica",
          fontWeight: FontWeight.w800,
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
          fontSize: 17,
          fontFamily: "Helvetica",
      color: Colors.grey.shade900)
    );
  }
}
