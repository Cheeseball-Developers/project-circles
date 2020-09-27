import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/all_discovered_devices_pop_up.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/discovered_circle_icon.dart';

class AvailableCirclesOverlay extends StatelessWidget {
  double getX(int index, double center) {
    return 128.0 * cos(index * 2 * pi / 8) + center - 24.0;
  }

  double getY(int index, double center) {
    return 128.0 * sin(index * 2 * pi / 8) + center - 128.0;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      print(
          'searching and found and built'); // this guy is not rebuilding for some weird reason, let's check
      if (state.isSearching) {
        return Stack(
          children: List.generate(
              state.discoveredDevices.length > 8
                  ? 8
                  : state.discoveredDevices.length, (index) {
            return Positioned(
              left: getX(index, mediaQuery.size.width / 2),
              bottom: getY(index, mediaQuery.size.height / 2),
              child: index < 7
                  ? DiscoveredCircleIcon(
                      user: User(
                          uid: state.discoveredDevices[index].uid,
                          name: state.discoveredDevices[index].name),
                    )
                  : GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          child:
                              AllDiscoveredDevicesPopUp()), // TODO: Add list UI to show all devices
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Theme.of(context).backgroundColor,
                            radius: 24.0,
                            child: Text('...'),
                          ),
                          Text('Show All')
                        ],
                      ),
                    ),
            );
          }), // TODO: Handle this plx
        );
      } else {
        return Container();
      }
    } // TODO: Handle error state
        );
  }
} // done, tanks a lot
