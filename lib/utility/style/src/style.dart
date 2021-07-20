part of style;

class Style {
  static void styleDefault() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: mColorNavigationBar,
        systemNavigationBarIconBrightness: Brightness.light));
  }
}

final mPrimaryTextStyle = TextStyle(
  fontFamily: "Product Sans",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 15.0.sp,
  color: mTextSecondaryColor,
);

final mTitleTextStyle = TextStyle(
  fontFamily: "Product Sans",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 15.0.sp,
  color: mTextTitleColor,
);

final mHintStyle = TextStyle(
  fontFamily: "Product Sans",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 14.0.sp,
  color: mHintTextColor,
);

final mTextFieldStyle = TextStyle(
  fontFamily: "Product Sans",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 14.0.sp,
  color: mTextSecondaryColor,
);

final mActionTextStyle = TextStyle(
  fontFamily: "Product Sans",
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  fontSize: 14.0.sp,
  color: mTextTitleColor,
);
