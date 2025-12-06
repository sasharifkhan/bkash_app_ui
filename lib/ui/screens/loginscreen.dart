import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:bkash_app_ui_v2/ui/screens/homescreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        actions: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: comcolor)),
            child: RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
                text: "Eng",
                style: TextStyle(color: comcolor),
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
                style: TextStyle(color: subcolor),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.dg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("assets/icons/bkash.png"),
                    color: comcolor,
                    height: 40.dg,
                    width: 40.dg,
                    fit: BoxFit.cover,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code_2_outlined,
                      size: 32.sp,
                      color: comcolor,
                    ),
                  ),
                ],
              ),
              Text(
                "Log In",
                style: TextStyle(
                  color: commontextcolor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "to your bKash account",
                style: TextStyle(color: commontextcolor, fontSize: 18.sp),
              ),
              h20,
              Text(
                "Account Number",
                style: TextStyle(color: commontextcolor, fontSize: 12.sp),
              ),
              TextField(
                // maxLength: 11,
                style: TextStyle(fontSize: 16.sp),
                decoration: InputDecoration(
                  isCollapsed: true,
                  // prefixText:
                  hintText: "+880 14xxxxxxxx",
                ),
              ),
              h20,
              Text(
                "bKash PIN",
                style: TextStyle(color: commontextcolor, fontSize: 12.sp),
              ),
              Stack(
                children: [
                  TextField(
                    style: TextStyle(fontSize: 16.sp),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      hintText: "Enter bKash PIN",
                    ),
                  ),
                  Positioned(
                    bottom: 0.1,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.fingerprint, color: comcolor),
                    ),
                  ),
                ],
              ),
              h20,
              RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: "Forget PIN? Try PIN Reset",
                  style: TextStyle(color: comcolor, fontSize: 12.sp),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45.h),
                  backgroundColor: comcolor,
                ),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
