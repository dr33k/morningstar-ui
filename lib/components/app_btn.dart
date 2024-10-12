import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final String text;
  final GestureTapCallback callback;
  const AppBtn({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
            decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Center(
            heightFactor: 2,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary,
              )
            ),
          ),
        ),
    );
  }
}
