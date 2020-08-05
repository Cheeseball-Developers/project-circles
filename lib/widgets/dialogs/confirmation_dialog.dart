import 'package:flutter/material.dart';
import 'package:projectcircles/constants/layout_constants.dart';
import 'package:projectcircles/widgets/buttons/primary_button.dart';
import 'package:projectcircles/widgets/buttons/secondary_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback yesTap;
  final VoidCallback noTap;

  const ConfirmationDialog(
      {@required this.title, @required this.subtitle, this.yesTap, this.noTap})
      : assert(title != null, subtitle != null);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Material(
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SecondaryButton(text: 'No', onTap: () {},),
                    Padding(padding: const EdgeInsets.only(right: 8.0),),
                    PrimaryButton(text: 'Yes', onTap: () {},)
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
