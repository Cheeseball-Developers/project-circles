import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
        builder: (context, state) => Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: Material(
                elevation: 16.0,
                borderRadius: BorderRadius.circular(16.0),
                color: Theme.of(context).bottomAppBarColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.save_alt),
                      color: Theme.of(context).accentIconTheme.color,
                      onPressed: () => context
                          .bloc<CurrentCircleBloc>()
                          .add(const CurrentCircleEvent.showFilesPage()),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => context.bloc<CurrentCircleBloc>().add(
                            const CurrentCircleEvent.sendFiles(),
                          ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.people),
                      color: Theme.of(context).accentIconTheme.color,
                      onPressed: () => context
                          .bloc<CurrentCircleBloc>()
                          .add(const CurrentCircleEvent.showMembersPage()),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: GestureDetector(
                onTap: () => context
                    .bloc<CurrentCircleBloc>()
                    .add(const CurrentCircleEvent.sendFiles()),
                // TODO: Add functionality to send button
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.send),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
