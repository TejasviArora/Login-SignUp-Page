import 'package:flutter/material.dart';

class TextInputs extends StatelessWidget {
  final String data;
  final TextInputType inputType;
  final bool obscureText;
  //final TextEditingController CustomController;
  TextEditingController customController;
  TextInputs({
    required this.data,
    required this.inputType,
    required this.obscureText,
    required this.customController,
  });
  // final customController = TextEditingController();

//   printLatestValue() {
//  print("Second text field: ${customController.text}");
// }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: customController,
      obscureText: obscureText,
      keyboardType: inputType,
      style: TextStyle(color: Colors.white, fontSize: 25),
      cursorColor: Color(0xFFFC9483),
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
          borderSide: BorderSide(color: Color(0xFFFC9483), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
