import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'textinput_fields.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF101010),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            children: [
              Row(
                children: [
                  // Container(
                  //   width: 55,
                  //   height: 55,
                  //   child: InkWell(
                  //     onTap: () {},
                  //     child: Icon(
                  //       Icons.arrow_back,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //       color: Color(0xFF101010),
                  //       borderRadius: BorderRadius.all(Radius.circular(20)),
                  //       border: Border.all(
                  //         color: Colors.white30,
                  //         width: 1,
                  //       )),
                  // ),
                  SizedBox(width: 25),
                  Text("Login",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              SizedBox(height: 150),
              Text(
                "Sign up with the following options",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white24,
                ),
              ),
              SizedBox(height: 30),
              TextInputs(
                data: "Email",
                inputType: TextInputType.text,
                obscureText: false,
              ),
              SizedBox(height: 30),
              TextInputs(
                data: "Password",
                inputType: TextInputType.text,
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  )),
                ),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFFC9483),
                    // gradient:
                    //     LinearGradient(colors: [Colors.pink, Colors.purple]),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
