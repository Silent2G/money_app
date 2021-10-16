import 'package:get_it/get_it.dart';

import 'src/core/services/navigation_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  _initServices();
}

void _initServices() {
  getIt.registerLazySingleton(() => NavigationService());
}
