import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;
@injectableInit
void configureInjection(String environment) {
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  $initGetIt(getIt, environment: environment);
}
