import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lost_and_found/Color/hexcolor.dart';

import 'firstscreen.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  Color _blue = HexColor("253A4B");
  Color _yellow = HexColor("FFCC00");
  Color _grey = HexColor('#808080');
  var _email,_password;
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
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: _blue,
        leading: IconButton(
         onPressed: (){
           Navigator.push(
               context, MaterialPageRoute(builder: (context) => mainscreen()));

  }, icon:   Icon(Icons.arrow_back,color: _yellow,),
        ),
      ),
      backgroundColor: _blue,
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
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
              Center(
                child: Container(
                   width: 300,
                  margin: EdgeInsets.only(top:10.0 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: _grey,
                  ),
                  child: TextFormField(
                     validator: (input){
                       if(input!.isNotEmpty){
                         return "Check your mail";
                       }
                     },
                    onSaved: (input)=> _email=input,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "namexyz@gmail.com",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      color: _grey,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: TextFormField(
                    validator: (input){
                      if(input!.isNotEmpty){
                        return "Check your Password";
                      }
                    },
                    onSaved: (input)=> _password=input,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                        border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              InkWell(

                child: Center(
                  child: Container(
                    width: 170,
                    height: 50,
                    margin: EdgeInsets.only( top:50.0,bottom: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: _yellow,
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
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
            ],
          ),
        ),
      ),
    );
  }
}
