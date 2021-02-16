import 'package:flutter/material.dart';
import 'package:task1/ScreenAwal.dart';
import 'package:task1/ScreenDua.dart';
import 'package:task1/ScreenTiga.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => ScreenAwal(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => ScreenDua(),
      '/tiga': (context) => ScreenTiga(),
    },
  ));
}



