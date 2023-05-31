import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/Modules/drawerscreens/CollectorScreen_Controller.dart';
import 'package:s_bin_admin/networking/databaseService.dart';
import 'package:s_bin_admin/widgets/apptheme.dart';
import 'package:s_bin_admin/widgets/drawer.dart';

class CollectorList extends StatelessWidget {
  CollectorList({Key? key}) : super(key: key);
  final controller = Get.put(CollectorScreenController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                    child: Obx(
                  () => ListView.builder(
                    itemCount: collector.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListTile(
                          tileColor: Colors.white,
                          title: Text(collector[index].name),
                          subtitle: Text(collector[index].email),
                        ),
                      );
                    },
                  ),
                )),
              ],
            ),
          )
          //appBar: myAppbar,
          // body: Expanded(
          //   child: ListView.builder(
          //     itemCount: collector.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Column(
          //         children: [
          //           SizedBox(
          //             height: 30,
          //           ),
          //           Container(
          //             height: size.height * 0.2,
          //             width: size.width * 0.3,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.black87,
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(10.0),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       Image.asset(
          //                         "Assets/images/trash-collector.png",
          //                         height: 60,
          //                         width: 70,
          //                       ),
          //                       SizedBox(
          //                         width: 20,
          //                       ),
          //                       Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text(
          //                             "collector Name",
          //                             style: AppTheme.text1,
          //                           ),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text(
          //                             collector[index].name,
          //                             style: AppTheme.text1,
          //                           ),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text(
          //                             "Email - ${collector[index].email}",
          //                             style: AppTheme.text1,
          //                           ),
          //                         ],
          //                       ),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),
          ),
    );
  }
}
