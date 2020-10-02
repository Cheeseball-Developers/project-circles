import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/connection_request_pop_up.dart';
import 'package:projectcircles/presentation/routes/router.gr.dart';

class DiscoveredCircleIcon extends StatelessWidget {
  final User user;

  const DiscoveredCircleIcon({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state.showRequestConnectionPopUp) {
          showDialog(
            context: context,
            barrierDismissible: false,
            child: BlocProvider.value(
              value: context.bloc<SearchBloc>(),
              child: ConnectionRequestPopUp(user),
            ),
          );
        }
      },
      builder: (context, state) => GestureDetector(
        onTap: () {
          context
              .bloc<SearchBloc>()
              .add(SearchEvent.requestConnection(discoveredUser: user));
        },
        child: Column(
          children: [
            const CircleAvatar(
              radius: 24.0,
              child: Icon(Icons.person),
            ),
            Text(user.name.getOrCrash())
          ],
        ),
      ),
    );
  }
}
