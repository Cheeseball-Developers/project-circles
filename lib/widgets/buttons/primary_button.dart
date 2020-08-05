import 'package:flutter/material.dart';
import 'package:projectcircles/constants/layout_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PrimaryButton({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(buttonBorderRadius),
        border: Border.all(color: Theme.of(context).buttonColor)
      ),
      child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          )),
    );
  }
}
