import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:s_bin_admin/Modules/dashBoard/views/desktopscaffold.dart';

class ResponsiveLayoutLogin extends StatelessWidget {
  final Widget TabletScreen;
  final Widget DesktopScreen;

  const ResponsiveLayoutLogin({
    super.key,
    required this.TabletScreen,
    required this.DesktopScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return TabletScreen;
        } else {
          return DesktopScreen;
        }
      },
    );
  }
}
