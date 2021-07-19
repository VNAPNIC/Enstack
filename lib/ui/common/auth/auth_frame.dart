import 'package:enstack/utility/style/style.dart';
import 'package:flutter/material.dart';

class AuthFrame extends StatelessWidget {
  const AuthFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // header
          Container(
            color: mPrimaryColor,
            child: Center(
              child: Text('abc'),
            ),
          )
        ],
      ),
    );
  }
}
