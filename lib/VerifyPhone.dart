import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MobileNumber.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        verticalDirection: VerticalDirection.down,
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.topLeft,
            child: new IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/MobileNumber');
                }),
          ),
          Text(
            'Verify Phone',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 2.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Didn't receive the code? ",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
