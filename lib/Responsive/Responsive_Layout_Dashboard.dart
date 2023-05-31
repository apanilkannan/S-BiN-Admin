import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayoutDashBoard extends StatelessWidget {
  final Widget tabScafflold;
  final Widget desktopScafflold;
  ResponsiveLayoutDashBoard(
      {required this.tabScafflold, required this.desktopScafflold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 900)
        return tabScafflold;
      else {
        return desktopScafflold;
      }
    });
  }
}
