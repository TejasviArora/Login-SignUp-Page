import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 40),
                  Text("Sign Up",
                      style: TextStyle(
                        fontSize: 55,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Sign up with the following options",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white24,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //child: Image.asset(""),
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  SizedBox(width: 40),
                  Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],
              ),
              SizedBox(height: 40),
              TextInputs(data: "User Name"),
              SizedBox(height: 30),
              TextInputs(data: "Email"),
              SizedBox(height: 30),
              TextInputs(data: "Password"),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputs extends StatelessWidget {
  final String data;
  const TextInputs({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontSize: 25),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white12, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        labelText: data,
        labelStyle: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
