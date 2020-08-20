import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final ButtonType type;

  final borderRadius = 24.0;
  final buttonBorderRadius = 12.0;

  const MyTextButton({Key key, this.text, this.onTap, @required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: type == ButtonType.primary
              ? Theme.of(context).buttonColor
              : Colors.white,
          borderRadius: BorderRadius.circular(buttonBorderRadius),
          border: Border.all(color: Theme.of(context).buttonColor)),
      child: InkWell(
          onTap: onTap,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(text,
                style: TextStyle(
                    color: type == ButtonType.primary
                        ? Colors.white
                        : Theme.of(context).buttonColor,
                    fontWeight: FontWeight.w600)),
          )),
    );
  }
}

enum ButtonType {
  primary,
  secondary
}