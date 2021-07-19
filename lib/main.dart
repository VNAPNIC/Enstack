import 'dart:async';

import 'package:enstack/di/injection/injection.dart';
import 'package:enstack/environment/env.dart';
import 'package:enstack/generated/l10n.dart';
import 'package:enstack/manifest.dart';
import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/login/login_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Main extends Env {
  @override
  FutureOr<StatefulWidget> onCreate() {
    ErrorWidget.builder = (FlutterErrorDetails details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return Container(color: Colors.transparent);
    };

    return Application();
  }

  @override
  Future? onInjection() async {
    await Injection.inject();
  }
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter architecture',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: LoginRoute.id,
      onGenerateRoute: (settings) => manifest(generateRoutes, settings),
    );
  }
}
