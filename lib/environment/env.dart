import 'dart:async';
import 'dart:io';

import 'package:enstack/environment/build_config.dart';
import 'package:enstack/network/http_overrides.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class Env {
  Env() {
    _init();
  }

  _init() {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await const MethodChannel('flavor')
          .invokeMethod<String>('getFlavor')
          .then((String? flavor) async {
        BuildConfig.init(flavor: flavor);
      }).catchError((error) {});

      await onInjection();
      HttpOverrides.global = MyHttpOverrides();
      Style.styleDefault();
      final StatefulWidget app = await onCreate();

      runApp(app);
    }, (error, stack) {
      print(error);
      print(stack);
    });
  }

  Future? onInjection();

  FutureOr<StatefulWidget> onCreate();
}
