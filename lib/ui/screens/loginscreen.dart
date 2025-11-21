import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appconstants.bgcolor,
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Appconstants.comcolor),
            ),
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
                text: "Eng",
                style: TextStyle(color: Appconstants.comcolor),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
                text: "বাং",
                style: TextStyle(color: Appconstants.subcolor),
              ),
            ),
          ),
        ],
      ),
      body: Column(children: []),
    );
  }
}
