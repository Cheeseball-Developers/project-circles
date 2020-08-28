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
      backgroundColor: Theme.of(context).primaryColor,
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
            borderRadius: BorderRadius.circular(10.0),
            color: Theme.of(context).cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Create Circle', style: Theme.of(context).textTheme.headline6),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Abhishek Upmanyu's Circle",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).buttonColor,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.done, color: Theme.of(context).accentIconTheme.color,),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
