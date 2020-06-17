import 'package:flutter/material.dart';
import 'texteditorcomponent.dart';
import 'button.dart';
import "emailtext.dart";

class UIhomepage extends StatefulWidget {
  @override
  _UIhomePageState createState() => _UIhomePageState();
}

//button controllers
TextEditingController emal = new TextEditingController();
TextEditingController pasw = new TextEditingController();

class _UIhomePageState extends State<UIhomepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25, 15, 0, 0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                    fontSize: 37.0,

                    //fontStyle: FontStyle.italic,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(28, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: 40,
                child: Divider(
                  height: 10.0,
                  thickness: 2.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(1.0, 10.0, 0.0, 5.0),
                  width: 240.0,
                  child: eTextEditor('EmailAddress/Mobile Number',
                      'name@eample.com', emal, " "),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(1.0, 5.0, 0.0, 5.0),
                  width: 240.0,
                  child: TextEditor('Password', '', pasw, "Forgot Password?"),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                  child: Button(),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'or login with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      //fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/index.png'),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/facebook.png'),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/twitter.jpg'),
                      ),
                  ),],
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  child: RichText(
                    text: TextSpan(
                      text: "You don't have an account? ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'SIGN UP',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}