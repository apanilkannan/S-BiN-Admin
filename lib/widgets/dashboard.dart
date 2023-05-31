import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  bool istab (BuildContext, context)=> MediaQuery.of(context).size.width>=1000;
  bool isDesktop (BuildContext, context)=> MediaQuery.of(context).size.width<=1000;

  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
