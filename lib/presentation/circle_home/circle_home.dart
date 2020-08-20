import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/core/widgets/dialog_boxes/confirmation_dialog.dart';

class CircleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height / 6),
        child: Material(
            elevation: 8.0,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0)),
            color: Colors.white,
            child: SafeArea(
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(child: Icon(Icons.person)),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Connected to...',
                              style: Theme.of(context).textTheme.subtitle1),
                          Text('a9rn2r9hqq',
                              style: Theme.of(context).textTheme.headline6)
                        ],
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(16.0),
                      icon: const Icon(Icons.cancel, color: Colors.redAccent),
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => ConfirmationDialog(
                            title: 'Disconnect',
                            subtitle: 'Are you sure you want to disconnect from the group?',
                          )),
                    )
                  ],
                ))),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Icon(Icons.file_upload), Text('Send File')],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Icon(Icons.ondemand_video), Text('Stream')],
                    ),
                  ),
                ],
              ),
            )),
      ),
      body: Material(
        child: Column(),
      ),
    );
  }
}
