import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Stateful.dart';
import 'package:flutter_application_1/Screens/classwork.dart';
import 'package:flutter_application_1/Screens/forms.dart';
import 'package:flutter_application_1/Screens/myText.dart';
import 'package:flutter_application_1/Screens/mybuttons.dart';
import 'package:flutter_application_1/Screens/number.dart';
import 'package:flutter_application_1/Screens/practiceNum.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Forms(),
    );
  }
}


