import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';

class DialogButtonLayout extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final VoidCallback primaryOnTap;
  final VoidCallback secondaryOnTap;
  final DialogButtonType type;

  const DialogButtonLayout({
    @required this.primaryText,
    this.secondaryText,
    @required this.primaryOnTap,
    this.secondaryOnTap,
    @required this.type,
  }) : assert(type == DialogButtonType.doubleButton
            ? (secondaryText != null && secondaryOnTap != null)
            : true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (type == DialogButtonType.doubleButton)
            MyTextButton(
              type: ButtonType.secondary,
              text: secondaryText,
              onTap: secondaryOnTap,
            ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
          ),
          MyTextButton(
            type: ButtonType.primary,
            text: primaryText,
            onTap: primaryOnTap,
          )
        ],
      ),
    );
  }
}

enum DialogButtonType { singleButton, doubleButton }
