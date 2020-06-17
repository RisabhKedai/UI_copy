import 'package:flutter/material.dart';
import 'flatbutt.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/spidey.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height)/3,
              //color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(child: Text('Select your language'),
                  padding: EdgeInsets.all(10.0),),
                  fButton('ENGLISH','images/english.png'),
                  SizedBox(height:16,),
                  fButton('SPAIN    ','images/spain.png'),
                ],
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// RaisedButton(
//               onPressed: () {
//                 print('76675764');
//               },
//               child: Text('Go back!'),
//             ),
