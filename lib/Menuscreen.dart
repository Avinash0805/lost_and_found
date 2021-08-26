import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost_and_found/Color/hexcolor.dart';
import 'package:lost_and_found/Loginscreen.dart';
import 'package:lost_and_found/Noticationcenter.dart';
import 'package:lost_and_found/signupscreen.dart';


class Menupage extends StatefulWidget {
  const Menupage({Key? key}) : super(key: key);

  @override
  _MenupageState createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
