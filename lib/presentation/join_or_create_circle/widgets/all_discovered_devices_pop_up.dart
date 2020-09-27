import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class AllDiscoveredDevicesPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.isSearching
          ? LargePopUp(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 0.25,
                      color: Colors.black,
                    ),
                  ),
                  shrinkWrap: true,
                  itemCount: state.discoveredDevices.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: MyListTile(
                      leading: const CircleAvatar(child: Icon(Icons.person)),
                      type: ListTileType.tapToOpen,
                      title: state.discoveredDevices[index].name.getOrCrash(),
                    ),
                  ),
                ),
              ),
            )
          : Container(), // TODO: Handle error state
    );
  }
}
