import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../routes_generator.dart';
import 'constants/colors.dart';
import 'core/state/navigation_service_controller.dart';
import 'settings/settings_controller.dart';

/// The Widget that configures your application.
class MoneyApp extends StatelessWidget {
  final RoutesGenerator routesGenerator;

  const MoneyApp(
      {Key? key,
      required this.settingsController,
      required this.routesGenerator})
      : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.

    final navigatorService = Get.find<NavigationServiceController>();
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          // restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              primaryColorLight: kPrimaryColorLight,
              splashColor: kSplashColor),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          navigatorKey: navigatorService.key,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: routesGenerator.onGenerateRoute,

          onGenerateInitialRoutes: (initialRoute) {
            return [
              routesGenerator
                  .onGenerateRoute(RouteSettings(name: initialRoute))!
            ];
          },
        );
      },
    );
  }
}
