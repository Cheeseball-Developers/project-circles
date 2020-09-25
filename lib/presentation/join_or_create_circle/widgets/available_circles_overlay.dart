import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/discovered_circle_icon.dart';

class AvailableCirclesOverlay extends StatelessWidget {
  double getX(int index, double center) {
    return 92.0 * cos((index-4) * 2 * pi / 8) + center;
  }

  double getY(int index, double center) {
    return 92.0 * sin((index-4) * 2 * pi / 8) + center;
  }

  @override
  Widget build(BuildContext context) {
    final discoveredDevices = [User(uid: UniqueId(), name: Name('hihi')), User(uid: UniqueId(), name: Name('hihi')), User(uid: UniqueId(), name: Name('hihi'))];
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) =>
          state.connectionFailureOrDiscoveredDevice.fold(
        () => Container(),
        (discoveredDevice) => Stack(
          children: List.generate(
            discoveredDevices.length > 8 ? 8 : discoveredDevices.length,
            (index) => Positioned(
              left: getX(index, mediaQuery.size.width / 2),
              bottom: getY(index, mediaQuery.size.height / 2),
              child: DiscoveredCircleIcon(
                user: discoveredDevices[index],
              ),
            ),
          ), // TODO: Handle this plx
        ),
      ),
    );
  }
}
