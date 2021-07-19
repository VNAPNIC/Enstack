import 'package:enstack/utility/image_provide.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final String hintText;
  final bool? isPassWord;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  TextFieldCustom({
    Key? key,
    required this.hintText,
    this.isPassWord,
    this.keyboardType,
    this.textInputAction,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.only(
        left: 13.0.w,
        right: 13.0.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(const Radius.circular(5.0)),
        border: Border.all(
          color: mBorderColor,
          width: 1.0.w,
          style: BorderStyle.solid,
        ),
      ),
      child: TextFormField(
        onFieldSubmitted: widget.onFieldSubmitted,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        style: mTextFieldStyle,
        enableSuggestions: false,
        autocorrect: false,
        obscureText: widget.isPassWord == true,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: mHintStyle,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            suffixIcon: widget.isPassWord == true
                ? Padding(
                    padding: EdgeInsets.only(
                      top: 12.0.h,
                      bottom: 12.h,
                      left: 12.w,
                    ),
                    child: Image.asset(
                      mShowPasswordImg,
                      height: 12.h,
                    ),
                  )
                : null),
      ),
    );
  }
}
