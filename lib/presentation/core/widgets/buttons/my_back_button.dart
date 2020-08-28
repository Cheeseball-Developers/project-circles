import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ExtendedNavigator.of(context).pop(),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: Theme.of(context).buttonColor,
            size: 24.0,
          ),
          Text(
            'Back',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Theme.of(context).buttonColor),
          )
        ],
      ),
    );
  }
}
