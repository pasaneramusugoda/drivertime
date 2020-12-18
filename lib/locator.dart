import 'package:get_it/get_it.dart';

import 'core/services/navigation_service.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => NavigationService());
}
