import 'package:flutter/material.dart';

import 'src/constants/routing.dart';

abstract class RoutesGenerator {
  Route<dynamic>? onGenerateRoute(RouteSettings settings);

  @protected
  Widget? resolvePage(RouteSettings settings);
}

class MoneyAppRoutesGenerator implements RoutesGenerator {
  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final page = resolvePage(settings);

    if (page != null) {
      return PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );
    }

    return null;
  }

  @override
  Widget? resolvePage(RouteSettings settings) {
    if (settings.name == null) return null;

    final uri = Uri.parse(settings.name!);

    for (final key in kRoutesMapping.keys) {
      if (uri.path == key) return kRoutesMapping[key];
    }

    return null;
  }
}
