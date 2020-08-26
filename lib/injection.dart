import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:projectcircles/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
)
void configureInjection(String env) => $initGetIt(getIt, environment: env);
