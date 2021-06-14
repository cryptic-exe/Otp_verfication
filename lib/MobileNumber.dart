import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  TextEditingController numberController = new TextEditingController();
  String phoneNumber ="";
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
                  Icons.cancel_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Frame');
                }),
          ),
          Column(
            children: [
              Text(
                'Please enter you mobile number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "You'll receive a 4 digit code \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t to verify next",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),
                ),
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  image: DecorationImage(
                    image: AssetImage('Images/india.png'),
                    alignment: Alignment.centerLeft,
                    scale: 0.7,
                  ),
                ),
                child: Center(
                  child: TextField(
                    onSubmitted: (String text){
                      setState(() {
                        phoneNumber = numberController.text;
                      });
                      numberController.clear();
                    },
                    controller: numberController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      prefixText: '+91 ',
                      contentPadding: EdgeInsets.all(5),
                      counterText: "",
                      labelText: 'Mobile Number',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                    maxLength: 10,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 350,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(46, 59, 98, 1),
                    border: Border.all(),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/VerifyPhone');
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.9),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Positioned.fill(
            child: Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('Images/Vector2.png'),
                colorBlendMode: BlendMode.overlay,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('Images/Vector1.png'),
                colorBlendMode: BlendMode.overlay,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
