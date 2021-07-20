import 'package:enstack/utility/image_provide.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFrame extends StatelessWidget {
  final Widget child;
  final String title;
  final String description;
  final double titleFontSize;
  final double descriptionFontSize;
  final double? spacingTitleAndDescription;

  const AuthFrame({
    Key? key,
    required this.title,
    required this.titleFontSize,
    required this.descriptionFontSize,
    required this.description,
    this.spacingTitleAndDescription,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          // header
          Container(
              decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0x00000000),
                offset: Offset(0.0, 4.0),
                blurRadius: 50.0,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.0),
              end: Alignment(0.002, -1),
              colors: [mAuthBackgroundColor, mPrimaryColor],
            ),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 156.h,
              ),
              _Logo(),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 45.h),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 42.h, right: 20.w, left: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: mTitleTextStyle.copyWith(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: spacingTitleAndDescription ?? 0.0,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: mTitleTextStyle.copyWith(
                            fontSize: descriptionFontSize,
                          ),
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        child,
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          mLogoSplash,
          width: 287.w,
          height: 100.h,
        ),
      ],
    );
  }
}
