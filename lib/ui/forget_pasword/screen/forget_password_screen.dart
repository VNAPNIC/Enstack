import 'package:enstack/generated/l10n.dart';
import 'package:enstack/ui/check_email/check_email_route.dart';
import 'package:enstack/ui/common/auth/auth_frame.dart';
import 'package:enstack/ui/common/button/button_radius.dart';
import 'package:enstack/ui/common/textfield/text_field_custom.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthFrame(
      title: S.current.forgetPasswordTitle,
      titleFontSize: mH3Size,
      description: S.current.forgetPasswordDescription,
      descriptionFontSize: mH5Size,
      spacingTitleAndDescription: 14.h,
      child: Column(
        children: [
          // email field
          TextFieldCustom(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            hintText: S.current.emailAddress,
            onFieldSubmitted: (value) {
              CheckEmailRoute.push();
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          // submit button
          ButtonRadius(
            callback: (){
              CheckEmailRoute.push();
            },
            text: S.current.signIn,
          ),
          SizedBox(
            height: 27.h,
          ),
          // cancel
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              S.current.cancel,
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
