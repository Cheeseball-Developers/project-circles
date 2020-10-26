import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/available_circles_overlay.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/my_bottom_sheet.dart';
import 'package:projectcircles/presentation/join_or_create_circle/widgets/search_button.dart';

class JoinOrCreateCircle extends StatelessWidget {
  final GlobalKey sheetKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SearchBloc>()..add(const SearchEvent.startSearching()),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: Material(
            color: Colors.transparent,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [SearchButton(), AvailableCirclesOverlay()],
            ),
          ),
        ),
        bottomSheet: MyBottomSheet(),
      ),
    );
  }
}
