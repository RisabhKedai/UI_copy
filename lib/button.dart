//import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter_bmi_app/ui-component/text.dart';
import 'nextwin.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Language()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600),
        ),
        color: Colors.black,
      ),
    );
  }
}
