import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/circle/join_or_create_circle/search_bloc.dart';

class SearchButton extends StatefulWidget {
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double baseRadius = 64.0;
  Animation<double> radius, radius1, radius2, radius3, radius4;

  // math function to calculate the begin radius of circle in pulse animation
  double beginRadius(int index) {
    return baseRadius + 8 * index + (baseRadius - 32.0) * index;
  }

  // math function to calculate the end radius of circle in pulse animation
  double endRadius(int index) {
    return baseRadius +
        (baseRadius - 8.0 * (64.0 / baseRadius) * (64.0 / baseRadius)) * index;
  }

  void _assignAnimationRadius() {
    radius = Tween<double>(begin: beginRadius(0), end: endRadius(0)).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.1, 0.5, curve: Curves.easeIn)));
    radius1 = Tween<double>(begin: beginRadius(1), end: endRadius(1)).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.15, 0.55, curve: Curves.easeIn)));
    radius2 = Tween<double>(begin: beginRadius(2), end: endRadius(2)).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.2, 0.6, curve: Curves.easeIn)));
    radius3 = Tween<double>(begin: beginRadius(3), end: endRadius(3)).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.25, 0.65, curve: Curves.easeIn)));
    radius4 = Tween<double>(begin: beginRadius(4), end: endRadius(4)).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.30, 0.70, curve: Curves.easeIn)));
  }

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1800), vsync: this);
    _assignAnimationRadius();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _assignAnimationRadius();
    _controller.repeat();
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state.isSearching == true) {
          baseRadius = 64.0;
          _assignAnimationRadius();
          _controller.repeat();
        } else {
          baseRadius = 32.0;
          _assignAnimationRadius();
          _controller.repeat();
        }
      },
      builder: (context, state) => AnimatedBuilder(
        animation: radius,
        builder: (context, child) => Stack(
          alignment: Alignment.center,
          children: [
            OverflowBox(
              maxHeight: MediaQuery.of(context).size.width * 2,
              maxWidth: MediaQuery.of(context).size.width * 2,
              child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.25),
                  radius: radius4.value),
            ),
            OverflowBox(
              maxHeight: MediaQuery.of(context).size.width * 2,
              maxWidth: MediaQuery.of(context).size.width * 2,
              child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.25),
                  radius: radius3.value),
            ),
            OverflowBox(
              maxHeight: MediaQuery.of(context).size.width * 2,
              maxWidth: MediaQuery.of(context).size.width * 2,
              child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.25),
                  radius: radius2.value),
            ),
            OverflowBox(
              maxHeight: MediaQuery.of(context).size.width * 2,
              maxWidth: MediaQuery.of(context).size.width * 2,
              child: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.25),
                  radius: radius1.value),
            ),
            GestureDetector(
              onTap: state.isSearching
                  ? () => context
                      .bloc<SearchBloc>()
                      .add(const SearchEvent.stopSearching())
                  : () => context
                      .bloc<SearchBloc>()
                      .add(const SearchEvent.startSearching()),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: radius.value,
                child: const Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
