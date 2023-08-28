import 'package:flutter/material.dart';
import 'package:internship_application_1/constants/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(5.0),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Image(image: AssetImage("assets/images/ship's helm.png")),
              const Text(
                Constants.firstPageText1,
                style: TextStyle(
                  fontFamily: "Barlow",
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
              const Text(
                Constants.firstPageText2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Barlow",
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
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
                },
                child: const Text(
                  Constants.firstPageText3,
                  style: TextStyle(
                    fontFamily: "Barlow",
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
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
