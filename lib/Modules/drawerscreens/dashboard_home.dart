import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:s_bin_admin/widgets/apptheme.dart';
import 'package:s_bin_admin/Modules/dashBoard/controllers/dashboard_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DashBoardHome extends StatelessWidget {
  DashBoardHome({super.key});
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      // body: FirebaseAnimatedList(
      //   query: FirebaseDatabase.instance.ref('bins'),
      //   itemBuilder: (context, snapshot, animation, index) {
      //     return Center(
      //       child: Container(
      //         color: Colors.amber,
      //         height: 300,
      //         width: 300,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Text(snapshot.value.toString()),
      //             Text(snapshot.child("Gas").value.toString()),
      //             Text(snapshot.child("Food Waste").value.toString()),
      //             Text(snapshot.child("Plastic Waste").value.toString()),
      //             Text(snapshot.child("Temp").value.toString()),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // )
      body: FirebaseAnimatedList(
        query: FirebaseDatabase.instance.ref('bins'),
        itemBuilder: (context, snapshot, animation, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Bin - ${index + 1}",
                          // snapshot.child("bins").value.toString(),
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Image.asset(
                      "Assets/images/dustbin.png",
                      height: 60,
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Food Waste",
                          style: AppTheme.text1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          snapshot.child("Food Waste").value.toString(),
                          style: AppTheme.text1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 35,
                    ),

                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      "Assets/images/dustbin.png",
                      height: 60,
                      width: 70,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Plastic Waste",
                            style: AppTheme.text1,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(snapshot.child("Plastic Waste").value.toString(),
                            style: AppTheme.text1,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Gas Status",
                            style: AppTheme.text1,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(snapshot.child("Gas").value.toString(),
                            style: AppTheme.text1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Temperature",
                          style: AppTheme.text1,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          snapshot.child("Temp").value.toString(),
                          style: AppTheme.text1,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    )
                  ],
                ),
                // child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Image.asset(
                //       "Assets/images/dustbin.png",
                //       height: 30,
                //       width: 40,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         const Text(
                //           "Bin2",
                //           style: AppTheme.text1,
                //         ),
                //         const Text(
                //           "Food Waste",
                //           style: AppTheme.text1,
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Image.asset(
                //       "Assets/images/dustbin.png",
                //       height: 30,
                //       width: 40,
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         const Text(
                //           "Bin2",
                //           style: AppTheme.text1,
                //         ),
                //         const Text(
                //           "Plastic Waste",
                //           style: AppTheme.text1,
                //         ),
                //       ],
                //     ),
                //     const SizedBox(
                //       height: 10,
                //     ),
                //     Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 20),
                //           child: Stack(children: [
                //             new CircularPercentIndicator(
                //               radius: 50.0,
                //               lineWidth: 10.0,
                //               percent: 0.45,
                //               center: new Text(
                //                 "45%",
                //                 style: TextStyle(color: Color(0xFF006446)),
                //               ),
                //               progressColor: Color(0xFF006446),
                //             ),
                //           ]),
                //         ),
                //         const SizedBox(
                //           width: 50,
                //         ),
                //         Stack(children: [
                //           new CircularPercentIndicator(
                //             radius: 50.0,
                //             lineWidth: 10.0,
                //             percent: 0.45,
                //             center: new Text(
                //               "45%",
                //               style: TextStyle(color: Color(0xFF006446)),
                //             ),
                //             progressColor: Color(0xFF006446),
                //           ),
                //         ]),
                //       ],
                //     )
                //   ],
                // ),
              ),
            ),
          );
          // return Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding:
          //               const EdgeInsets.only(left: 10, right: 10, top: 10),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.black.withOpacity(0.7),
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(10.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin1",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Food Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                           Text(
          //                             snapshot
          //                                 .child("Food Waste")
          //                                 .value
          //                                 .toString(),
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin1",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Plastic Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                   const SizedBox(
          //                     height: 10,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.only(left: 20),
          //                         child: Stack(children: [
          //                           new CircularPercentIndicator(
          //                             radius: 50.0,
          //                             lineWidth: 10.0,
          //                             percent: 0.8,
          //                             center: new Text(
          //                               snapshot.child("Gas").value.toString(),
          //                               style:
          //                                   TextStyle(color: Color(0xFF006446)),
          //                             ),
          //                             progressColor: Color(0xFF006446),
          //                           ),
          //                         ]),
          //                       ),
          //                       const SizedBox(
          //                         width: 50,
          //                       ),
          //                       Stack(children: [
          //                         new CircularPercentIndicator(
          //                           radius: 50.0,
          //                           lineWidth: 10.0,
          //                           percent: 0.8,
          //                           center: new Text(
          //                             "87%",
          //                             style:
          //                                 TextStyle(color: Color(0xFF006446)),
          //                           ),
          //                           progressColor: Color(0xFF006446),
          //                         ),
          //                       ]),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding:
          //               const EdgeInsets.only(left: 10, top: 10, right: 10),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.black.withOpacity(0.7),
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(10.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin2",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Food Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin2",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Plastic Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                   const SizedBox(
          //                     height: 10,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.only(left: 20),
          //                         child: Stack(children: [
          //                           new CircularPercentIndicator(
          //                             radius: 50.0,
          //                             lineWidth: 10.0,
          //                             percent: 0.45,
          //                             center: new Text(
          //                               "45%",
          //                               style:
          //                                   TextStyle(color: Color(0xFF006446)),
          //                             ),
          //                             progressColor: Color(0xFF006446),
          //                           ),
          //                         ]),
          //                       ),
          //                       const SizedBox(
          //                         width: 50,
          //                       ),
          //                       Stack(children: [
          //                         new CircularPercentIndicator(
          //                           radius: 50.0,
          //                           lineWidth: 10.0,
          //                           percent: 0.45,
          //                           center: new Text(
          //                             "45%",
          //                             style:
          //                                 TextStyle(color: Color(0xFF006446)),
          //                           ),
          //                           progressColor: Color(0xFF006446),
          //                         ),
          //                       ]),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //         Padding(
          //           padding:
          //               const EdgeInsets.only(left: 10, top: 10, right: 20),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.black.withOpacity(0.7),
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(10.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin3",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Food Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Image.asset(
          //                         "Assets/images/dustbin.png",
          //                         height: 30,
          //                         width: 40,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           const Text(
          //                             "Bin3",
          //                             style: AppTheme.text1,
          //                           ),
          //                           const Text(
          //                             "Plastic Waste",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                   const SizedBox(
          //                     height: 10,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.only(left: 20),
          //                         child: Stack(children: [
          //                           new CircularPercentIndicator(
          //                             radius: 50.0,
          //                             lineWidth: 10.0,
          //                             percent: 0.07,
          //                             center: new Text(
          //                               "7%",
          //                               style:
          //                                   TextStyle(color: Color(0xFF006446)),
          //                             ),
          //                             progressColor: Color(0xFF006446),
          //                           ),
          //                         ]),
          //                       ),
          //                       const SizedBox(
          //                         width: 50,
          //                       ),
          //                       Stack(children: [
          //                         new CircularPercentIndicator(
          //                           radius: 50.0,
          //                           lineWidth: 10.0,
          //                           percent: 0.07,
          //                           center: new Text(
          //                             "7%",
          //                             style:
          //                                 TextStyle(color: Color(0xFF006446)),
          //                           ),
          //                           progressColor: Color(0xFF006446),
          //                         ),
          //                       ]),
          //                     ],
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //     const SizedBox(
          //       height: 100,
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(25),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Container(
          //             width: 400,
          //             color: Colors.black.withOpacity(0.8),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 const Padding(
          //                   padding: EdgeInsets.only(
          //                     left: 12,
          //                     top: 20,
          //                   ),
          //                   child: Text(
          //                     "Notification",
          //                     style: AppTheme.text1,
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10.0),
          //                   child: Container(
          //                     color: Colors.black.withOpacity(0.8),
          //                     child: Row(
          //                       children: [
          //                         Image.asset(
          //                           "Assets/images/dustbin.png",
          //                           height: 30,
          //                           width: 40,
          //                         ),
          //                         Column(
          //                           crossAxisAlignment:
          //                               CrossAxisAlignment.start,
          //                           children: [
          //                             const Text(
          //                               "Bin 1 is almost full capacity!",
          //                               style: AppTheme.text3,
          //                             ),
          //                             const SizedBox(
          //                               height: 10,
          //                             ),
          //                             const Text(
          //                               "Bin 1 is almost full,send collectors to clear the bin",
          //                               style: AppTheme.text4,
          //                             )
          //                           ],
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // );
        },
      ),
    ));
  }
}
