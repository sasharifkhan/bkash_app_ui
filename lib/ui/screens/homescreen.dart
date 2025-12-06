import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:bkash_app_ui_v2/logic/applogic/feature_grid_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: comcolor,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
            child: Padding(
              padding: EdgeInsets.all(10.dg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
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
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              // height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25.dg),
                    height: 510.h,
                    width: double.infinity,
                    child: Consumer<FeatureGridProvider>(
                      builder: (_, provider, _) {
                        List featurelist = provider.featuregriditems;
                        return GridView.builder(
                          shrinkWrap: true,
                          itemCount: featurelist.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              ),
                          itemBuilder: (context, index) => Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFFF7F7F7),
                                  radius: 32.r,
                                  child: Image(
                                    image: AssetImage(
                                      featurelist[index]['image'],
                                    ),
                                    height: 35.dg,
                                    width: 35.dg,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  featurelist[index]['name'],
                                  style: TextStyle(
                                    color: commontextcolor,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
