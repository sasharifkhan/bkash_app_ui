import 'package:bkash_app_ui_v2/constants/appconstants.dart';
import 'package:bkash_app_ui_v2/logic/applogic/feature_grid_provider.dart';
import 'package:bkash_app_ui_v2/ui/widgets/homescreenmenu.dart';
import 'package:bkash_app_ui_v2/ui/widgets/profile_drawer.dart';
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
      drawer: ProfileDrawer(),
      body: Column(
        children: [
          Homescreenmenu(
            profilebutton: () {
              _drawerkey.currentState!.openDrawer();
            },
            tapforbalance: () {},
            search: () {},
            bkashmenu: () {},
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
