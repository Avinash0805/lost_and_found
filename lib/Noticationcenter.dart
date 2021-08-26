import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost_and_found/Color/hexcolor.dart';
import 'package:lost_and_found/firstscreen.dart';

class notificationscreen extends StatefulWidget {
  const notificationscreen({Key? key}) : super(key: key);

  @override
  _notificationscreenState createState() => _notificationscreenState();
}

class _notificationscreenState extends State<notificationscreen> {
  Color _blue = HexColor("253A4B");
  Color _yellow = HexColor("FFCC00");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification Center",
          style: TextStyle(
            color: _yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: _blue,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => mainscreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: _yellow,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
