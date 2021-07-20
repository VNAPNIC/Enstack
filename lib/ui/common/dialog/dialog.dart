import 'package:enstack/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showDialogError({String? title, required String? content}) => Get.dialog(
  AlertDialog(
    title: Text(title ?? ""),
    content: Text(content ?? ""),
    actions: <Widget>[
      TextButton(
        child: Text(S.current.ok),
        onPressed: () {
          Get.back();
        },
      )
    ],
  ),
  barrierDismissible: false,
);

showDialogLoading() => Get.dialog(
  WillPopScope(
    onWillPop: () async => false,
    child: Center(
      child: SizedBox(
        width: 60,
        height: 60,
        child: CircularProgressIndicator(
          strokeWidth: 10,
        ),
      ),
    ),
  ),
  barrierDismissible: false,
);
