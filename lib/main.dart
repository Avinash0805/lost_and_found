import 'package:flutter/material.dart';
import 'package:lost_and_found/firstscreen.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  };
  runApp(new MaterialApp(
    home:mainscreen(),
  ));
}