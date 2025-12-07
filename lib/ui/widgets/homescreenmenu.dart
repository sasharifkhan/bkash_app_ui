import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreenmenu extends StatelessWidget {
  final VoidCallback profilebutton;
  final VoidCallback tapforbalance;
  final VoidCallback search;
  final VoidCallback bkashmenu;
  const Homescreenmenu({
    super.key,
    required this.profilebutton,
    required this.tapforbalance,
    required this.search,
    required this.bkashmenu,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.dg,
      child: Padding(
        padding: EdgeInsets.all(10.dg),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: profilebutton,
                  child: CircleAvatar(
                    radius: 22.dg,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFDE96A0),
                      radius: 20.dg,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                ),
                w20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "S Khan",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150.w,
                        height: 33.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 3),
                            Container(
                              decoration: BoxDecoration(
                                color: comcolor,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              height: 22.dg,
                              width: 22.dg,
                              child: Icon(
                                Icons.currency_exchange_rounded,
                                color: Colors.white,
                                size: 14.dg,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text("Tap for Balance"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22.dg,
                    child: Icon(Icons.search_rounded, size: 24.dg),
                  ),
                ),
                w10,
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22.dg,
                        child: Image(
                          image: AssetImage("assets/icons/bkash.png"),
                          height: 30.dg,
                          width: 30.dg,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 11.r,
                          child: CircleAvatar(
                            radius: 10.r,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.menu, size: 10.dg),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
