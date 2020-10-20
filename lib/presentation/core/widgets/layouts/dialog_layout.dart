import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';

class DialogLayout extends StatelessWidget {
  final String title;
  final Widget child;
  final String primaryButtonText;
  final String secondaryButtonText;
  final VoidCallback primaryOnTap;
  final VoidCallback secondaryOnTap;
  final DialogType dialogType;
  final DialogButtonType dialogButtonType;

  const DialogLayout({
    this.title,
    @required this.child,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.primaryOnTap,
    this.secondaryOnTap,
    @required this.dialogType,
    this.dialogButtonType,
  })  : assert((dialogType == DialogType.full ||
                dialogType == DialogType.withTitle)
            ? title != null
            : true),
        assert((dialogType == DialogType.full ||
                dialogType == DialogType.withButtons)
            ? (dialogButtonType != null &&
                primaryButtonText != null &&
                primaryOnTap != null)
            : true);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Material(
          borderRadius: BorderRadius.circular(16.0),
          color: Theme.of(context).cardColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (dialogType == DialogType.full ||
                  dialogType == DialogType.withTitle)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(
                  top: (dialogType == DialogType.empty ||
                          dialogType == DialogType.withButtons)
                      ? 16.0
                      : 0.0,
                  bottom: (dialogType == DialogType.empty ||
                          dialogType == DialogType.withTitle)
                      ? 16.0
                      : 0.0,
                  left: dialogType == DialogType.empty ? 16.0 : 0.0,
                  right: dialogType == DialogType.empty ? 16.0 : 0.0,
                ),
                child: child,
              ),
              if (dialogType == DialogType.full ||
                  dialogType == DialogType.withButtons)
                DialogButtonLayout(
                  primaryText: primaryButtonText,
                  primaryOnTap: primaryOnTap,
                  secondaryText: secondaryButtonText,
                  secondaryOnTap: secondaryOnTap,
                  type: dialogButtonType,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DialogType { full, withTitle, withButtons, empty }
