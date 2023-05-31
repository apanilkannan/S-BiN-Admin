import 'dart:js';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:s_bin_admin/Modules/dashBoard/controllers/dashboard_controllers.dart';
import 'package:s_bin_admin/Modules/drawerscreens/UserList.dart';
import 'package:s_bin_admin/Routes/routes.dart';
import 'package:s_bin_admin/widgets/apptheme.dart';

import '../Modules/dashBoard/views/desktopscaffold.dart';
import '../Modules/drawerscreens/collector_list.dart';

int index = 0;

var myAppbar =
    AppBar(elevation: 0, backgroundColor: Colors.black.withOpacity(0.8));

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final dashBoardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Drawer(
      backgroundColor: Colors.black.withOpacity(0.8),
      child: Column(
        children: [
          const Center(
            child: Text(
              "S-BiN",
              style: TextStyle(fontSize: 55, color: Colors.green),
            ),
          ),
          InkWell(
            onTap: () {
              dashBoardController.itemClickIndex.value = 0;
            },
            child: const ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.green,
              ),
              title: Text(
                "DashBoard ",
                style: AppTheme.text1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              dashBoardController.itemClickIndex.value = 1;
            },
            child: const ListTile(
              leading: Icon(
                Icons.list_alt_rounded,
                color: Colors.green,
              ),
              title: Text(
                "User List",
                style: AppTheme.text1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              dashBoardController.itemClickIndex.value = 2;
            },
            child: const ListTile(
              leading: Icon(
                Icons.featured_play_list_sharp,
                color: Colors.green,
              ),
              title: Text(
                "Collector List",
                style: AppTheme.text1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              dashBoardController.itemClickIndex.value = 3;
            },
            child: const ListTile(
              leading: Icon(
                Icons.co_present,
                color: Colors.green,
              ),
              title: Text(
                "Collector SignUp From",
                style: AppTheme.text1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.login);
            },
            child: const ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.green,
              ),
              title: Text(
                "Logout",
                style: AppTheme.text1,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
