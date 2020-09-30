import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
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
        state.connectionFailureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (l) => null,
            (_) {
              print('Successfully Joined!');
              getIt<CurrentCircleBloc>()
                  .add(CurrentCircleEvent.joinCircle(host: user));
              ExtendedNavigator.of(context).push(Routes.circleHome);
            },
          ),
        );
      },
      builder: (context, state) => GestureDetector(
        onTap: () {
          showDialog(context: context, child: ConnectionRequestPopUp(user));
          context.bloc<SearchBloc>().add(
                SearchEvent.requestConnection(discoveredUser: user),
              );
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
