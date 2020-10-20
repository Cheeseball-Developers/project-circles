import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class AlertDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onTap;

  const AlertDialog({
    @required this.title,
    @required this.subtitle,
    @required this.buttonText,
    @required this.onTap,
  })  : assert(title != null),
        assert(subtitle != null),
        assert(buttonText != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      primaryOnTap: onTap,
      primaryButtonText: buttonText,
      title: title,
      dialogType: DialogType.full,
      dialogButtonType: DialogButtonType.singleButton,
      child: Text(subtitle),
    );
  }
}
