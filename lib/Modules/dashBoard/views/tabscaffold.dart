import 'package:flutter/material.dart';

import '../../../widgets/apptheme.dart';
import '../../../widgets/drawer.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:s_bin_admin/widgets/apptheme.dart';
import 'package:s_bin_admin/Modules/dashBoard/controllers/dashboard_controllers.dart';

class TabScaffold extends StatefulWidget {
  const TabScaffold({Key? key}) : super(key: key);

  @override
  State<TabScaffold> createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black45,

      appBar: myAppbar,
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 60, top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin1",
                              style: AppTheme.text1,
                            ),
                            const Text(
                              "Food Waste",
                              style: AppTheme.text1,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin1",
                              style: AppTheme.text1,
                            ),
                            const Text(
                              "Plastic Waste",
                              style: AppTheme.text1,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Stack(children: [

                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text(
                                "97",
                                style: AppTheme.text1,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Stack(children: [

                          const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "97",
                              style: AppTheme.text1,
                            ),
                          ),
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 60),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin2",
                              style: AppTheme.text1,
                            ),
                            const Text(
                              "Food Waste",
                              style: AppTheme.text1,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin2",
                              style: AppTheme.text1,
                            ),
                            const Text(
                              "Plastic Waste",
                              style: AppTheme.text1,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Stack(children: [
                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text(
                                "50",
                                style: AppTheme.text1,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Stack(children: [

                          const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "50",
                              style: AppTheme.text1,
                              maxLines: 2,
                            ),
                          ),
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 60),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin3",
                              style: AppTheme.text1,
                            ),
                            const SizedBox(
                                child: Text(
                              "Food Waste",
                              style: AppTheme.text1,
                              maxLines: 2,
                            )),
                          ],
                        ),
                        Image.asset(
                          "Assets/images/dustbin.png",
                          height: 30,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Bin3",
                              style: AppTheme.text1,
                            ),
                            const Text(
                              "Plastic Waste",
                              style: AppTheme.text1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Stack(children: [

                            const Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text(
                                "15",
                                style: AppTheme.text1,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Stack(children: [

                          const Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "15",
                              style: AppTheme.text1,
                            ),
                          ),
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 60),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      "Notification",
                      style: AppTheme.text1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Image.asset(
                            "Assets/images/dustbin.png",
                            height: 30,
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Bin 1 is almost full capacity!",
                                style: AppTheme.text3,
                                maxLines: 2,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Bin 1 is almost full,send collectors to clear the bin",
                                style: AppTheme.text4,
                                maxLines: 2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
