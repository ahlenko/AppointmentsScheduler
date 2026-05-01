import 'dart:io';
import 'dart:typed_data';

import 'package:appointments/app/navigation/router.dart';
import 'package:appointments/ui/pages/create_appointment/create_appointment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRouteObserver extends RouteObserver {}

final RouteObserver customRouterObserver = CustomRouteObserver();

typedef PathWidgetBuilder = Widget Function(BuildContext, String?, Object?);

class Path {
  final String pattern;
  final PathWidgetBuilder builder;
  const Path(this.pattern, this.builder);
}

class RoutesGenerator {
  static final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  static List<Path> paths = [
    Path(
      Routes.createAppointment,
      (context, match, args) => CreateAppointmentPage(),
    ),
  ];

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    for (final path in paths) {
      final regExpPattern = RegExp(path.pattern);
      var name = settings.name;
      if (name != null) {
        if (regExpPattern.hasMatch(name)) {
          final firstMatch = regExpPattern.firstMatch(name);
          final match = firstMatch != null && (firstMatch.groupCount == 1)
              ? firstMatch.group(1)
              : null;
          return MaterialPageRoute<void>(
            builder: (context) =>
                path.builder(context, match, settings.arguments),
            settings: settings,
          );
        }
      }
    }

    return null;
  }
}
