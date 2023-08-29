import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internship_application_1/constants/constants.dart';
import 'package:internship_application_1/customicons/custom_icons.dart';
import 'package:internship_application_1/helpers/input_validator.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool isEmailCorrect = false;
    bool isPasswordCorrect = false;
    bool isNameCorrect = false;
    double screenHeight = MediaQuery.of(context).size.height;
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: false,
            children: <Widget>[
              SizedBox(height: screenHeight / 8),
              const Image(
                  height: 50.0,
                  width: 50.0,
                  image: AssetImage("assets/images/ship's helm.png")),
              const Center(
                child: Text(
                  Constants.thirdPageText1,
                  style: TextStyle(
                    fontFamily: "Barlow",
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 48),
              const Text(
                Constants.thirdPageText2,
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
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text("Name"),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
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
              SizedBox(height: screenHeight / 64),
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
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
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
                        emailController.text)) {
                      print(emailController.text);
                      isEmailCorrect = true;
                    }
                    if (InputValidation.passwordValidatonToast(
                        passwordController.text)) {
                      print(passwordController.text);
                      isPasswordCorrect = true;
                    }
                    if (InputValidation.nameValidatonToast(
                        nameController.text)) {
                      print(nameController.text);
                      isNameCorrect = true;
                    }
                    if (isEmailCorrect && isPasswordCorrect && isNameCorrect) {
                      Navigator.of(context).pushNamed("/first");
                      Fluttertoast.showToast(
                          msg: "Successfully validated",
                          gravity: ToastGravity.TOP);
                    }
                    Navigator.of(context).pushNamed("/first");
                  },
                  child: const Text(
                    Constants.thirdPageText3,
                    style: TextStyle(
                      fontFamily: "Barlow",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    Constants.secondPageText6,
                    style: TextStyle(
                      fontFamily: "Barlow",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/second");
                    },
                    child: const Text(
                      Constants.thirdPageText4,
                      style: TextStyle(
                        fontFamily: "Barlow",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 24),
              const Center(
                child: Text(
                  Constants.secondPageText8,
                  style: TextStyle(
                    fontFamily: "Barlow",
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
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
              SizedBox(height: screenHeight / 24),
            ],
          ),
        ),
      ),
    );
  }
}
