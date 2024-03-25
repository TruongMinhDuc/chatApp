import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final void Function()? fncOnTap;
  final String buttonText;

  const myButton({super.key, required this.buttonText, required this.fncOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fncOnTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin:  const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
