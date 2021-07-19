import 'package:enstack/generated/l10n.dart';
import 'package:enstack/ui/common/auth/auth_frame.dart';
import 'package:enstack/ui/common/button/button_radius.dart';
import 'package:enstack/ui/common/textfield/text_field_custom.dart';
import 'package:enstack/ui/forget_pasword/forget_password_route.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthFrame(
      title: S.current.hello,
      titleFontSize: mH1Size,
      description: S.current.signInToYourAccount,
      descriptionFontSize: mH4Size,
      child: Column(
        children: [
          // email field
          TextFieldCustom(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: S.current.emailAddress,
          ),
          SizedBox(
            height: 16.h,
          ),
          // password field
          TextFieldCustom(
            onFieldSubmitted: (value) {},
            hintText: S.current.password,
            textInputAction: TextInputAction.done,
            isPassWord: true,
          ),
          // forget password
          Container(
            margin: EdgeInsets.only(top: 11.h, bottom: 27.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  ForgetPasswordRoute.push();
                },
                child: Text(
                  S.current.forgetPassword,
                  style: mActionTextStyle,
                ),
              ),
            ),
          ),
          // submit button
          ButtonRadius(
            text: S.current.signIn,
          ),
          // create new account
          Container(
            margin: EdgeInsets.only(top: 27.h),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: S.current.doesNotHaveAnAccountYet,
                      style: mActionTextStyle,
                    ),
                    TextSpan(
                      text: S.current.create,
                      style: mActionTextStyle.copyWith(
                        color: mPrimaryColor,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
