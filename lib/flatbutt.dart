import 'package:flutter/material.dart';
//import 'nextwin.dart';

class fButton extends StatefulWidget {
  @override
  String t;
  String i;
  fButton(this.t, this.i);
  _ButtonState createState() => _ButtonState(t, i);
}

bool pressed = false;
bool k=true;
Color tc = Colors.black;

class _ButtonState extends State<fButton> {
  String t;
  String i;
  _ButtonState(this.t, this.i);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: RaisedButton(
        onPressed: () {
          // setState(() {
          //   pressed = !pressed;
          // });
        },
        onHighlightChanged: (k) {
          setState(() {
            pressed = !pressed;
          });
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              t,
              style: TextStyle(
                  color: pressed?Colors.white:Colors.black,
                  fontSize: 17.0,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage(i),
            ),
          ],
        ),
        color: Colors.white,
        highlightColor: Colors.black,
      ),
    );
  }
}
