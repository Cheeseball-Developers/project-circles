import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final ButtonType type;

  const MyTextButton({Key key, this.text, this.onTap, @required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: type == ButtonType.primary
              ? Theme.of(context).buttonColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Theme.of(context).buttonColor)),
      child: InkWell(
          onTap: onTap,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(text,
                style: Theme.of(context).textTheme.button),
          )),
    );
  }
}

enum ButtonType {
  primary,
  secondary
}