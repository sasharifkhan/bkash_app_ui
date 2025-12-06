import 'dart:async';

import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:bkash_app_ui_v2/ui/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: comcolor,
      body: Center(
        child: Image(
          image: AssetImage("assets/icons/bkash.png"),
          height: 250.h,
          width: 250.w,
          color: Color(0xFFF5B7D1),
        ),
      ),
    );
  }
}
