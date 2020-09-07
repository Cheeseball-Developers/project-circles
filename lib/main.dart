import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/infrastructure/circle/files_repository.dart';
import 'package:projectcircles/injection.dart';
import 'package:projectcircles/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  getIt<FilesRepository>().loadRootDirectory();
  runApp(AppWidget());
}