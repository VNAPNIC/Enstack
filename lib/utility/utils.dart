import 'package:flutter/material.dart';

void afterBuild(Function callback) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    callback();
  });
}
