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
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: screenHeight / 5),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey,
                child: Image.asset(
                  "assets/images/ship's helm.png",
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Center(
                child: Text(
                  Constants.firstPageText1,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: screenHeight / 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65.0),
                child: Text(
                  Constants.firstPageText2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
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
                  child: Text(
                    Constants.firstPageText3,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(Constants.firstPageText4,
                      style: Theme.of(context).textTheme.displayMedium),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/second");
                    },
                    child: Text(Constants.firstPageText5,
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
