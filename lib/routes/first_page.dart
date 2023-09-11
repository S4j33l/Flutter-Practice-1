import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/images/ship's helm2.0.png",
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Center(
                child: Text(
                  "Welcome To",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: screenHeight / 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65.0),
                child: Text(
                  "Create an account and access thousands of cool stuff",
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
                    "Get Started",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Do you have an account? ",
                      style: Theme.of(context).textTheme.displayMedium),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/second");
                    },
                    child: Text("Log in",
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
