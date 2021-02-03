import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/domain/circle/user.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/connection_request_pop_up.dart';

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
            builder: (_) => BlocProvider.value(
              value: context.read<SearchBloc>(),
              child: ConnectionRequestPopUp(user),
            ),
          );
        }
      },
      builder: (context, state) => GestureDetector(
        onTap: () {
          context
              .read<SearchBloc>()
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
