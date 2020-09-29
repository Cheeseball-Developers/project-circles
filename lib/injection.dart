import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env) => $initGetIt(getIt, environment: env);
