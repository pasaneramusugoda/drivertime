import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'core/config/router/router.gr.dart' as AppRouter;
import 'core/services/navigation_service.dart';
import 'provider_setup.dart';
import 'ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'DriveTime',
        theme: appTheme(),
        builder: ExtendedNavigator.builder<AppRouter.Router>(
          navigatorKey: GetIt.I<NavigationService>().navigatorKey,
          router: AppRouter.Router(),
        ),
      ),
    );
  }
}
