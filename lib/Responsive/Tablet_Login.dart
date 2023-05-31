import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/Custom_Textfield.dart';

class TabletLogin extends StatefulWidget {
  const TabletLogin({super.key});

  @override
  State<TabletLogin> createState() => _TabletLoginState();
}

class _TabletLoginState extends State<TabletLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // backgroundColor: Color(0xff2c5f2d),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "Assets/images/throw-trash.png",
                height: 80,
                width: 65,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Log in",
                style: GoogleFonts.aBeeZee(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2c5f2d)),
              ),
              const SizedBox(
                height: 30,
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

              // EMAIL TEXT FORM FIELD,
              CustomTextField(
                baseColor: Colors.grey,
                borderColor: Color(0xff2c5f2d),
                errorColor: Colors.red,
                //controller: _email,
                hint: " Email",
                inputType: TextInputType.emailAddress,
                // validator: Validator.validateEmail,
                onChanged: () {},
              ),
              const SizedBox(
                height: 10,
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
                    padding:
                        const EdgeInsets.only(right: 20, top: 18, bottom: 18),
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff2c5f2d)),
                    ),
                  ),
                ],
              ),
              const SizedBox(),
              Container(
                height: 40,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff2c5f2d),
                ),
                child: Center(
                    child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style:
                        GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 14),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black, fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
