import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String noText;
  final String yesText;
  final VoidCallback noTap;
  final VoidCallback yesTap;

  const ConfirmationDialog(
      {@required this.title,
      @required this.subtitle,
      this.noText = 'No',
      this.yesText = 'Yes',
      this.yesTap,
      this.noTap})
      : assert(title != null),
        assert(subtitle != null);

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      title: title,
      primaryButtonText: yesText,
      secondaryButtonText: noText,
      primaryOnTap: yesTap,
      secondaryOnTap: noTap,
      dialogType: DialogType.full,
      dialogButtonType: DialogButtonType.doubleButton,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
