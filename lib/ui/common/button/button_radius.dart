import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonRadius extends StatelessWidget {
  final VoidCallback? callback;
  final String text;

  const ButtonRadius({Key? key, this.callback, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback?.call();
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: mPrimaryColor,
          borderRadius: BorderRadius.all(const Radius.circular(5.0)),
        ),
        child: Center(
          child: Text(
            text,
            style: mActionTextStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
