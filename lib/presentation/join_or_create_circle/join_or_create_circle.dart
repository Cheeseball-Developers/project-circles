import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/join_or_create_circle_bloc.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/search_button.dart';

class JoinOrCreateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () => ExtendedNavigator.named('nav').push('/Settings'),
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: BlocProvider(
            create: (context) => getIt<JoinOrCreateCircleBloc>(),
            child: SearchButton()),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Group Name'),
                  Text('Password ka option idhar'),
                  Text('Create group button idhar')
                ],
              ),
            )),
      ),
    );
  }
}
