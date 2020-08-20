import 'package:flutter/material.dart';

class JoinOrCreateCircle extends StatefulWidget {
  @override
  _JoinOrCreateGroupState createState() => _JoinOrCreateGroupState();
}

class _JoinOrCreateGroupState extends State<JoinOrCreateCircle>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double baseRadius = 32.0;
  Animation<double> radius, radius1, radius2, radius3;

  MyConnectionState _connectionState = MyConnectionState.scanning;

  // math function to calculate the begin radius of circle in pulse animation
  double beginRadius(int index) {
    return baseRadius + 8 * index + (baseRadius - 32.0) * index;
  }

  // math function to calculate the end radius of circle in pulse animation
  double endRadius(int index) {
    return baseRadius +
        (baseRadius - 8.0 * (64.0 / baseRadius) * (64.0 / baseRadius)) * index;
  }

  // function to start device scanning
  // also sets animation in motion
  Future _startScanning() async {
    _connectionState = MyConnectionState.scanning;
    baseRadius = 64.0;
    _assignAnimationRadius();
    _controller.repeat();
  }

  // function to stop device scanning
  // also sets animation in motion
  Future _stopScanning() async {
    _connectionState = MyConnectionState.notScanning;
    baseRadius = 32.0;
    _assignAnimationRadius();
    _controller.repeat();
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
  }

  @override
  void initState() {
    _controller = AnimationController(duration: const Duration(milliseconds: 1800));
    _assignAnimationRadius();
    _controller.addListener(() {
      setState(() {});
    });
    _startScanning();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                radius: radius3.value),
            CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                radius: radius2.value),
            CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                radius: radius1.value),
            GestureDetector(
              onTap: _connectionState == MyConnectionState.scanning
                  ? () => _stopScanning()
                  : () => _startScanning(),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: radius.value,
                child: Icon(Icons.search),
              ),
            ),
          ],
        ),
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

enum MyConnectionState {
  scanning,
  notScanning
}
