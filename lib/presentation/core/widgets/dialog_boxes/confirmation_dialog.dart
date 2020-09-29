import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String noText;
  final String yesText;
  final VoidCallback noTap;
  final VoidCallback yesTap;

  final borderRadius = 16.0;

  const ConfirmationDialog(
      {@required this.title,
        @required this.subtitle,
        this.noText = 'No',
        this.yesText = 'Yes',
        this.yesTap,
        this.noTap})
      : assert(title != null, subtitle != null);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Material(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 32.0),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyTextButton(
                      type: ButtonType.secondary,
                      text: noText,
                      onTap: noTap,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                    ),
                    MyTextButton(
                      type: ButtonType.primary,
                      text: yesText,
                      onTap: yesTap,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
