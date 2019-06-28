import 'package:flutter/material.dart';
import './screens/login/login.dart';
import './screens/homepage/homepage.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
        initialRoute: '/',
        routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Login(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/homepage': (context) => Homepage(),
        }
    );
  }
}