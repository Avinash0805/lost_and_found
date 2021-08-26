import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost_and_found/Color/hexcolor.dart';
import 'package:lost_and_found/Loginscreen.dart';
import 'package:lost_and_found/Noticationcenter.dart';
import 'package:lost_and_found/signupscreen.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  Color _blue = HexColor("253A4B");
  Color _yellow = HexColor("FFCC00");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOST AND FOUND",
          style: TextStyle(
            color: _yellow,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.menu,
              color: _yellow,
            )),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => notificationscreen()));
            },
            icon: Icon(Icons.notifications_active),
            color: _yellow,
          )
        ],
        backgroundColor: _blue,
        elevation: 0,
      ),
      backgroundColor: _blue,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("images/logo.png"),
                ),
                borderRadius: BorderRadius.circular(700.0),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: Center(
                child: Container(
                  width: 170,
                  height: 50,
                  margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: _yellow,
                  ),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: _blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: _yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
