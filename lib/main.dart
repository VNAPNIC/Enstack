import 'dart:async';

import 'package:enstack/di/injection/injection.dart';
import 'package:enstack/environment/env.dart';
import 'package:enstack/generated/l10n.dart';
import 'package:enstack/manifest.dart';
import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/login/login_route.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

/// EndPoint default
void main() => Main();

class Main extends Env {
  @override
  FutureOr<StatefulWidget> onCreate() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // Avoid errors caused by flutter upgrade.
    WidgetsFlutterBinding.ensureInitialized();
    Style.styleDefault();

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
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        return ScreenUtilInit(
          designSize: Size(375, 812),
          builder: () => GetMaterialApp(
            title: 'flutter architecture',
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate,
            ],
            locale: const Locale('en'),
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            fallbackLocale: const Locale('en'),
            initialRoute: LoginRoute.id,
            onGenerateRoute: (settings) => manifest(generateRoutes, settings),
          ),
        );
      },
    );
  }
}
