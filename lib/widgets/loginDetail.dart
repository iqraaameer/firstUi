import 'package:flutter/material.dart';
class textField1 extends StatefulWidget {
  const textField1({
    super.key,
  });

  @override
  State<textField1> createState() => _textField1State();
}

class _textField1State extends State<textField1> {


  @override
  Widget build(BuildContext context) {
    return TextField(
       readOnly: true,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Colors.white70,
        suffixIcon: GestureDetector(
          onTap: () {
           
          },
          child: Icon(
            Icons.visibility,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class textField extends StatefulWidget {
  const textField({
    super.key,
  });

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
        hintText: 'abc@gmail.com',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),

          borderRadius: BorderRadius.circular(30.0),
          //  borderSide: BorderSide(color: Colors.green),
        ),
        filled: true,
        fillColor: Colors.blue[50],
      ),
    );
  }
}