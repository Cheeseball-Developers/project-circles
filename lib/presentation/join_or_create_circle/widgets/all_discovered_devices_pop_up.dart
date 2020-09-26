import 'package:flutter/material.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/large_pop_up.dart';
import 'package:projectcircles/presentation/core/widgets/my_list_tile.dart';

class AllDiscoveredDevicesPopUp extends StatelessWidget {
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
    User(uid: UniqueId(), name: Name('4')),
    User(uid: UniqueId(), name: Name('5')),
    User(uid: UniqueId(), name: Name('6')),
    User(uid: UniqueId(), name: Name('7')),
    User(uid: UniqueId(), name: Name('8')),
    User(uid: UniqueId(), name: Name('9')),
  ];

  @override
  Widget build(BuildContext context) {
    return LargePopUp(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(height: 0.25, color: Colors.black,),
          ),
          shrinkWrap: true,
          itemCount: discoveredDevices.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: MyListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              type: ListTileType.tapToOpen,
              title: discoveredDevices[index].name.getOrCrash(),
            ),
          ),
        ),
      ),
    );
  }
}
