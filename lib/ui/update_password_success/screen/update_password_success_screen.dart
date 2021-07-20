import 'package:enstack/generated/l10n.dart';
import 'package:enstack/ui/common/auth/auth_frame.dart';
import 'package:enstack/ui/common/button/button_radius.dart';
import 'package:enstack/ui/login/login_route.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatePasswordSuccessScreen extends StatefulWidget {
  const UpdatePasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  _UpdatePasswordSuccessScreenState createState() =>
      _UpdatePasswordSuccessScreenState();
}

class _UpdatePasswordSuccessScreenState
    extends State<UpdatePasswordSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthFrame(
      title: S.current.succcess,
      titleFontSize: mH3Size,
      description: S.current.updatePasswordSucccess,
      descriptionFontSize: mH5Size,
      spacingTitleAndDescription: 14.h,
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          // submit button
          ButtonRadius(
            callback: () async {
              LoginRoute.offAllAndPush();
            },
            text: S.current.goBackToLogin,
          ),
          SizedBox(
            height: 29.h,
          ),
        ],
      ),
    );
  }
}
