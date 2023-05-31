import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/Modules/dashBoard/controllers/dashboard_controllers.dart';
import 'package:s_bin_admin/Modules/drawerscreens/UserList.dart';
import 'package:s_bin_admin/Modules/drawerscreens/collector_list.dart';
import 'package:s_bin_admin/Modules/drawerscreens/collector_signup.dart';
import 'package:s_bin_admin/Modules/drawerscreens/dashboard_home.dart';
import 'package:s_bin_admin/widgets/apptheme.dart';
import 'package:s_bin_admin/widgets/drawer.dart';
import 'package:s_bin_admin/widgets/drawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final dahsController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: myAppbar,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyDrawer(),
          Obx(
            () => dahsController.itemClickIndex.value == 0
                ? DashBoardHome()
                : const SizedBox.shrink(),
          ),
          Obx(
            () => dahsController.itemClickIndex.value == 1
                ? UserList()
                : const SizedBox.shrink(),
          ),
          Obx(
            () => dahsController.itemClickIndex.value == 2
                ? CollectorList()
                : const SizedBox.shrink(),
          ),
          Obx(
            () => dahsController.itemClickIndex.value == 3
                ? CollectorSignup()
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
