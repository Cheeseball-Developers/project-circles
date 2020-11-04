import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class AllDiscoveredDevicesPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => DialogLayout(
        title: 'Circles',
        primaryButtonText: 'Back',
        primaryOnTap: () => ExtendedNavigator.of(context).pop(),
        dialogType: DialogType.full,
        dialogButtonType: DialogButtonType.singleButton,
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
                title: state.discoveredDevices[index].name.getOrCrash(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
