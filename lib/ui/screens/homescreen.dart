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
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      backgroundColor: comcolor,
      drawer: Drawer(
        width: double.infinity,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: comcolor,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  title: Text(
                    "My Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage("assets/icons/bkash.png"),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("S Khan"),
                  subtitle: Text("+8801xxxxxxxxx"),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFFDE96A0),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  trailing: Container(
                    height: 40.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      border: Border.all(color: comcolor),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(color: comcolor, fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
                Divider(height: 10.h, color: Color(0xFFF2F2F2), thickness: 5.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      top: 15.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Set Your Transection Features",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          height: 250.h,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 10,
                            itemBuilder: (context, index) => ListTile(
                              contentPadding: EdgeInsets.all(0),
                              onTap: () {},
                              leading: Icon(Icons.electric_bolt_sharp),
                              title: Text("One-Tap Transection"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120.dg,
            child: Padding(
              padding: EdgeInsets.all(10.dg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _drawerkey.currentState!.openDrawer();
                        },
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
