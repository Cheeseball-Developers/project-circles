import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';

class TransferProgressBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
        builder: (context, state) => Material(
          elevation: 8.0,
          borderRadius: BorderRadius.circular(16.0),
          color: Theme.of(context).bottomAppBarColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sending: image.jpeg (2/9)',
                    style: Theme.of(context).accentTextTheme.bodyText2,
                  ),
                ),
                const LinearProgressIndicator(minHeight: 4.0, value: 0.15, backgroundColor: Colors.transparent,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
