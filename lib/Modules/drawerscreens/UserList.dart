import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/networking/databaseService.dart';

import 'userScreenController.dart';

class UserList extends StatelessWidget {
  UserList({super.key});

  final controller = Get.put(UserScreenController());

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
                  itemCount: user.value.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListTile(
                        tileColor: Colors.white,
                        title: Text(user.value[index].name),
                        subtitle: Text(user.value[index].email),
                        trailing: Text(user.value[index].phone),
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
        // body: ListView.builder(
        //   itemCount: 5,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Column(
        //       children: [
        //         SizedBox(
        //           height: 30,
        //         ),
        //         Container(
        //           height: size.height * 0.2,
        //           width: size.width * 0.3,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: Colors.black87,
        //           ),
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                   children: [
        //                     Image.asset(
        //                       "Assets/images/bussiness-man.png",
        //                       height: 60,
        //                       width: 70,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: const [
        //                         Text(
        //                           "User 1",
        //                           style: AppTheme.text1,
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "Location - Vijay nagar",
        //                           style: AppTheme.text1,
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     );
        //   },
        // )
      ),
    );
  }
}
