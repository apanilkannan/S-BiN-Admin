import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/Modules/dashBoard/bindings/dashboard_Bindings.dart';
import 'package:s_bin_admin/Modules/dashBoard/views/desktopscaffold.dart';
import 'package:s_bin_admin/Modules/dashBoard/views/tabscaffold.dart';
import 'package:s_bin_admin/Modules/login/bindings/Login_Binding.dart';
import 'package:s_bin_admin/Modules/login/views/Desktop_Login.dart';
import 'package:s_bin_admin/Modules/login/views/Tablet_Login.dart';
import 'package:s_bin_admin/Responsive/Responsive_Layout_Login.dart';
import 'package:s_bin_admin/Routes/routes.dart';
import 'package:flutter/material.dart';

import '../Responsive/Responsive_Layout_Dashboard.dart';

class AppPages {
  static const initialRoute = Routes.login;
  static final routes = [
    GetPage(
        name: Routes.responsivelayoutdashBoard,
        page: () => ResponsiveLayoutDashBoard(
              desktopScafflold: DesktopScaffold(),
              tabScafflold: TabScaffold(),
            ),
        binding: DashBoardBindings()),
    GetPage(
        name: Routes.login,
        page: () => ResponsiveLayoutLogin(
            TabletScreen: TabletLogin(), DesktopScreen: DesktopLogin()),
        binding: LoginBinding())
  ];
}
