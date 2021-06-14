import 'package:flutter/material.dart';
import 'package:otp_verification/Frame.dart';
import 'MobileNumber.dart';
import 'VerifyPhone.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/MobileNumber' : (context) => MobileNumber(),
        '/Frame' : (context) => MyHomePage(),
        '/VerifyPhone' : (context) => VerifyPhone(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),  //original function will used is MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

