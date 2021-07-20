import 'package:enstack/generated/l10n.dart';
import 'package:enstack/ui/common/auth/auth_frame.dart';
import 'package:enstack/ui/common/button/button_radius.dart';
import 'package:enstack/ui/common/textfield/text_field_custom.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_mail_app/open_mail_app.dart';

class CheckEmailScreen extends StatefulWidget {
  const CheckEmailScreen({Key? key}) : super(key: key);

  @override
  _CheckEmailScreenState createState() => _CheckEmailScreenState();
}

class _CheckEmailScreenState extends State<CheckEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthFrame(
      title: S.current.checkYourMail,
      titleFontSize: mH3Size,
      description: S.current.checkYourMailDescription,
      descriptionFontSize: mH5Size,
      spacingTitleAndDescription: 14.h,
      child: Column(
        children: [
          // email field
          Opacity(
            opacity: 0,
            child: TextFieldCustom(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              hintText: S.current.emailAddress,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          // submit button
          ButtonRadius(
            callback: () async {
              await OpenMailApp.openMailApp();
            },
            text: S.current.openEmail,
          ),
          SizedBox(
            height: 29.h,
          ),
          // later
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              S.current.later,
              style: mActionTextStyle.copyWith(
                color: mPrimaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
