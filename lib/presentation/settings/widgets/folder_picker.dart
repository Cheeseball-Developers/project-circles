import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class FolderPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      dialogType: DialogType.withButtons,
      dialogButtonType: DialogButtonType.doubleButton,
      primaryButtonText: 'Select',
      secondaryButtonText: 'Cancel',
      primaryOnTap: () {},
      secondaryOnTap: () {},
      child: Column(),
    );
  }
}
