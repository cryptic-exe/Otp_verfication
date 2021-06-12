import 'package:flutter/material.dart';
import 'package:otp_verification/Frame.dart';
import 'MobileNumber.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MobileNumber(),  //original function will used is MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

