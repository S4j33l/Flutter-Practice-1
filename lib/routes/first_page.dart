import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internship_application_1/constants/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(5.0),
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: screenHeight / 5),
              const Image(
                height: 250,
                width: 250,
                image: AssetImage("assets/images/ship's helm.png"),
              ),
              SizedBox(height: screenHeight / 24),
              const Text(
                Constants.firstPageText1,
                style: TextStyle(
                    fontFamily: "Barlow",
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: screenHeight / 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0),
                child: Text(
                  Constants.firstPageText2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Barlow",
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(350, 40),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("/second");
                  Fluttertoast.showToast(
                    msg: "You're on the second page now!",
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 16.0,
                    gravity: ToastGravity.BOTTOM,
                  );
                },
                child: const Text(
                  Constants.firstPageText3,
                  style: TextStyle(
                      fontFamily: "Barlow",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              SizedBox(height: screenHeight / 64),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: Constants.firstPageText4,
                      style: TextStyle(
                        fontFamily: "Barlow",
                      ),
                    ),
                    TextSpan(
                      text: Constants.firstPageText5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Barlow",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
