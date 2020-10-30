import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';

class ErrorRetry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Error Loading...'),
          MyTextButton(
            type: ButtonType.secondary,
            text: 'Reload',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
