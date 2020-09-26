import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
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
    final discoveredDevices = [
      User(uid: UniqueId(), name: Name('1')),
      User(uid: UniqueId(), name: Name('2')),
      User(uid: UniqueId(), name: Name('3')),
      User(uid: UniqueId(), name: Name('4')),
      User(uid: UniqueId(), name: Name('5')),
      User(uid: UniqueId(), name: Name('6')),
      User(uid: UniqueId(), name: Name('7')),
      User(uid: UniqueId(), name: Name('8')),
      User(uid: UniqueId(), name: Name('9')),
      User(uid: UniqueId(), name: Name('10')),
      User(uid: UniqueId(), name: Name('11')),
      User(uid: UniqueId(), name: Name('12')),
    ];
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.isSearching
          ? state.connectionFailureOrDiscoveredDevice.fold(
              () => Container(),
              (discoveredDevice) => Stack(
                children: List.generate(
                    discoveredDevices.length > 8 ? 8 : discoveredDevices.length,
                    (index) {
                  return Positioned(
                    left: getX(index, mediaQuery.size.width / 2),
                    bottom: getY(index, mediaQuery.size.height / 2),
                    child: index < 7 ? DiscoveredCircleIcon(
                      user: discoveredDevices[index],
                    ) : GestureDetector(
                      onTap: () => showDialog(context: context, child: AllDiscoveredDevicesPopUp()), // TODO: Add list UI to show all devices
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Theme.of(context).backgroundColor, radius: 24.0, child: Text('...'),),
                          Text('Show All')
                        ],
                      ),
                    ),
                  );
                }), // TODO: Handle this plx
              ),
            )
          : Container(),
    );
  }
}
