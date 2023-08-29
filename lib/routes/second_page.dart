import 'package:flutter/material.dart';
import 'package:internship_application_1/constants/constants.dart';
import 'package:internship_application_1/customicons/custom_icons.dart';
import 'package:internship_application_1/helpers/input_validator.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool isEmailCorrect = false;
    bool isPasswordCorrect = false;
    double screenHeight = MediaQuery.of(context).size.height;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: screenHeight / 6),
              const Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage("assets/images/ship's helm.png")),
              SizedBox(height: screenHeight / 16),
              const Center(
                child: Text(
                  Constants.secondPageText1,
                  style: TextStyle(
                    fontFamily: "Barlow",
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 56),
              const Text(
                Constants.secondPageText2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Barlow",
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text("Email"),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text("Password"),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: screenHeight / 64),
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(Constants.secondPageText3),
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(350, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onPressed: () {
                    if (InputValidation.emailValidatonToast(
                        emailController.text) == true)  {
                      print(emailController.text);
                      isEmailCorrect = true;
                    }
                    if (InputValidation.passwordValidatonToast(
                        passwordController.text) == true) {
                      print(passwordController.text);
                      isPasswordCorrect = true;
                    }
                    if (isEmailCorrect && isPasswordCorrect){
                      Navigator.of(context).pushNamed("/third");
                    }
                  },
                  child: const Text(
                    Constants.secondPageText4,
                    style: TextStyle(
                        fontFamily: "Barlow",
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 42),
              Center(
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: Constants.secondPageText5,
                        style: TextStyle(
                          fontFamily: "Barlow",
                        ),
                      ),
                      TextSpan(
                        text: Constants.secondPageText6,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Barlow",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 36),
              const Center(
                child: Text(
                  Constants.secondPageText7,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontFamily: "Barlow",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 56),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(CustomIcons.facebookCircled),
                  SizedBox(
                    width: 7.0,
                  ),
                  Icon(CustomIcons.twitter),
                  SizedBox(
                    width: 7.0,
                  ),
                  Icon(CustomIcons.linkedinCircled),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
