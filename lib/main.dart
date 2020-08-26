import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}