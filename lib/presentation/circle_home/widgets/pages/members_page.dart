import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/current_circle/current_circle_bloc.dart';

class MembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentCircleBloc, CurrentCircleState>(
        builder: (context, state) => ListView.builder(itemBuilder: null));
  }
}
