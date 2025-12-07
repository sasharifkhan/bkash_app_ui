import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:bkash_app_ui_v2/logic/applogic/myprofilelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                trailing: InkWell(
                  onTap: () {},
                  child: Container(
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
              ),
              Divider(height: 10.h, color: Color(0xFFF2F2F2), thickness: 5.h),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
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
                          Consumer<Myprofilelist>(
                            builder: (_, provider, _) {
                              List tranesctionfeaturs =
                                  provider.transectionfeatures;
                              return ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: tranesctionfeaturs.length,
                                itemBuilder: (context, index) => ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  onTap: () {},
                                  leading: Image(
                                    image: AssetImage(
                                      tranesctionfeaturs[index]['icon'],
                                    ),
                                    height: 24.dg,
                                    width: 24.dg,
                                    fit: BoxFit.cover,
                                    color: commontextcolor,
                                  ),
                                  title: Text(
                                    tranesctionfeaturs[index]['text'],
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ),
                              );
                            },
                          ),
                          h10,
                          Text(
                            "Select Your Preferences",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Consumer<Myprofilelist>(
                            builder: (_, provider, _) {
                              List preferences = provider.preferences;
                              return ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: preferences.length,
                                itemBuilder: (context, index) => ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  onTap: () {},
                                  leading: Image(
                                    image: AssetImage(
                                      preferences[index]['icon'],
                                    ),
                                    height: 24.dg,
                                    width: 24.dg,
                                    fit: BoxFit.cover,
                                    color: commontextcolor,
                                  ),
                                  title: Text(
                                    preferences[index]['text'],
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ),
                              );
                            },
                          ),
                          h10,
                          Text(
                            "Manage Your Account",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Consumer<Myprofilelist>(
                            builder: (_, provider, _) {
                              List manageaccount = provider.manageaccount;
                              return ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: manageaccount.length,
                                itemBuilder: (context, index) => ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  onTap: () {},
                                  leading: Image(
                                    image: AssetImage(
                                      manageaccount[index]['icon'],
                                    ),
                                    height: 24.dg,
                                    width: 24.dg,
                                    fit: BoxFit.cover,
                                    color: commontextcolor,
                                  ),
                                  title: Text(
                                    manageaccount[index]['text'],
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
