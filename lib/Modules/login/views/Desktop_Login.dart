import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_bin_admin/Modules/dashBoard/views/tabscaffold.dart';
import 'package:s_bin_admin/Modules/login/controllers/Login_Controller.dart';
import 'package:s_bin_admin/Responsive/Responsive_Layout_Dashboard.dart';
import 'package:s_bin_admin/Routes/routes.dart';
import 'package:s_bin_admin/networking/appUtils.dart';
import 'package:s_bin_admin/networking/authService.dart';
import 'package:s_bin_admin/widgets/Custom_Textfield.dart';

import '../../dashBoard/views/desktopscaffold.dart';

class DesktopLogin extends StatefulWidget {
  DesktopLogin({super.key});

  @override
  State<DesktopLogin> createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 50, bottom: 50),
                child: Center(
                  child: Image.asset(
                    "Assets/images/throw-trash.png",
                    height: 280,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Log in",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2c5f2d)),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Color(0xff2c5f2d),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      baseColor: Colors.grey,
                      borderColor: Color(0xff2c5f2d),
                      errorColor: Colors.red,
                      hint: " Email",
                      inputType: TextInputType.emailAddress,
                      onChanged: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Color(0xff2c5f2d),
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      controller: controller.passwordController,
                      baseColor: Colors.grey,
                      borderColor: Color(0xff2c5f2d),
                      errorColor: Colors.red,
                      //controller: _password,
                      obscureText: true,
                      hint: " Password",
                      // validator: Validator.validatePassword,
                      onChanged: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 18, bottom: 18),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot password?",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff2c5f2d)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: InkWell(
                        onTap: () async {
                          debugPrint(
                              'email : ${controller.emailController.text}');
                          debugPrint(
                              "pwd : ${controller.passwordController.text}");
                          final message = await AuthService().login(
                            email: controller.emailController.text,
                            password: controller.passwordController.text,
                          );
                          debugPrint('message : $message');
                          if (message!.contains('Success')) {
                            //PreferenceUtils.setBool('isLogin', true);
                            Get.offAllNamed(Routes.responsivelayoutdashBoard);
                            AppUtils().showSuccessBar('Successfully Login!');
                            //controller.isLoading.value = false;
                          }

                          // Get.toNamed(Routes.responsivelayoutdashBoard);
                          // if (controller.emailController.text.isNotEmpty &&
                          //     controller.passwordController.text.isNotEmpty) {
                          //   //controller.isLoading.value = true;
                          //   final message = await AuthService().login(
                          //     email: controller.emailController.text,
                          //     password: controller.passwordController.text,
                          //   );
                          //   if (message!.contains('Success')) {
                          //     //PreferenceUtils.setBool('isLogin', true);
                          //     Get.offAllNamed(Routes.responsivelayoutdashBoard);
                          //     AppUtils().showSuccessBar('Successfully Login!');
                          //     //controller.isLoading.value = false;
                          //   }
                          // } else {
                          //   //controller.isLoading.value = false;
                          //   AppUtils().showErrorBar(
                          //       'Please Fill All The Required Field!');
                          // }
                          //controller.isLoading.value = false;
                        },
                        child: Container(
                          height: 40,
                          // width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xff2c5f2d),
                          ),
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
