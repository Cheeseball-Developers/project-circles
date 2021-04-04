import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final ButtonType type;

  const MyTextButton({required this.text, required this.onTap, required this.type})
     ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: type == ButtonType.primary
            ? Theme.of(context).buttonColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
            color: type == ButtonType.tertiary
                ? Colors.transparent
                : Theme.of(context).buttonColor),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button!.copyWith(
                color: type == ButtonType.primary
                    ? Theme.of(context).cardColor
                    : Theme.of(context).textTheme.button!.color),
          ),
        ),
      ),
    );
  }
}

enum ButtonType { primary, secondary, tertiary }
