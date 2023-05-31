import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:s_bin_admin/Modules/drawerscreens/drawerScreenController.dart';
import 'package:s_bin_admin/networking/appUtils.dart';
import 'package:s_bin_admin/networking/authService.dart';
import 'package:s_bin_admin/widgets/Custom_Textfield.dart';
import 'package:s_bin_admin/networking/databaseService.dart';

class CollectorSignup extends StatelessWidget {
  CollectorSignup({super.key});
  final controller = Get.put(DrawerScreenControllerController());

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.7),
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 20, bottom: 20),
                  child: Center(
                    child: Image.asset(
                      "Assets/images/throw-trash.png",
                      height: 180,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff2c5f2d)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            const Text(
                              "Full Name",
                              style: TextStyle(
                                  color: Color(0xff2c5f2d),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      CustomTextField(
                        controller: nameController,
                        baseColor: Colors.grey,
                        borderColor: const Color(0xff2c5f2d),
                        errorColor: Colors.red,
                        hint: "Full Name",
                        inputType: TextInputType.emailAddress,
                        onChanged: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            const Text(
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
                        controller: emailController,
                        baseColor: Colors.grey,
                        borderColor: const Color(0xff2c5f2d),
                        errorColor: Colors.red,
                        hint: " Email",
                        inputType: TextInputType.emailAddress,
                        onChanged: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            const Text(
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
                        controller: passwordController,
                        baseColor: Colors.grey,
                        borderColor: const Color(0xff2c5f2d),
                        errorColor: Colors.red,
                        hint: " Password",
                        inputType: TextInputType.emailAddress,
                        onChanged: () {},
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(15.0),
                      //   child: Row(
                      //     children: [
                      //       const Text(
                      //         "Confirm Password",
                      //         style: TextStyle(
                      //             color: Color(0xff2c5f2d),
                      //             fontSize: 15,
                      //             fontWeight: FontWeight.w600),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // CustomTextField(
                      //   baseColor: Colors.grey,
                      //   borderColor: const Color(0xff2c5f2d),
                      //   errorColor: Colors.red,
                      //   hint: " Confirm Password",
                      //   inputType: TextInputType.emailAddress,
                      //   onChanged: () {},
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, bottom: 25, left: 100, right: 100),
                        child: InkWell(
                          onTap: () async {
                            final message = await AuthService().registration(
                                email: emailController.text,
                                password: passwordController.text);

                            if (message!.contains('Success')) {
                              final result = await DatabaseService().addUser(
                                name: nameController.text,
                                email: emailController.text,
                              );
                              AppUtils().showSuccessBar("Success");
                              if (result!.contains('success')) {}
                            } else {
                              AppUtils().showErrorBar("$message");
                            }

                            // DatabaseService().addUser(
                            //     name: nameController.text,
                            //     email: emailController.text);
                            // controller.insertData(nameController.text,
                            //     emailController.text, passwordController.text);
                            // nameController.clear();
                            // emailController.clear();
                            // passwordController.clear();
                          },
                          child: Container(
                            height: 40,
                            // width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xff2c5f2d),
                            ),
                            child: const Center(
                                child: Text(
                              "SignUp",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
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
      ),
    );
  }
}
