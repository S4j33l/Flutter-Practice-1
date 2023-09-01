import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              SizedBox(height: screenHeight / 6),
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
                child: Image.asset(
                  "assets/images/ship's helm.png",
                ),
              ),
              SizedBox(height: screenHeight / 16),
              Center(
                child: Text(Constants.secondPageText1,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(height: screenHeight / 56),
              Text(Constants.secondPageText2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text(
                      "Email",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text(
                      "Password",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: screenHeight / 64),
              GestureDetector(
                onTap: () => showForgotPasswordDialog(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Constants.secondPageText3,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
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
                        passwordController.text, isEmailCorrect)) {
                      print(passwordController.text);
                      isPasswordCorrect = true;
                    }
                    if (isEmailCorrect && isPasswordCorrect) {
                      Navigator.of(context).pushNamed("/third");
                      Fluttertoast.showToast(msg: "Successfully logged in!");
                    }
                  },
                  child: Text(Constants.secondPageText4,
                      style: Theme.of(context).textTheme.displayMedium),
                ),
              ),
              SizedBox(height: screenHeight / 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Constants.secondPageText5,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/third");
                    },
                    child: Text(Constants.secondPageText7,
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 36),
              Center(
                child: Text(Constants.secondPageText8,
                    style: Theme.of(context).textTheme.displayMedium),
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

  void showForgotPasswordDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Forgot Password?"),
              content: SizedBox(
                height: 171.0,
                child: Column(
                  children: <Widget>[
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter new password...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Confirm new password...",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Confirm")),
                    )
                  ],
                ),
              ),
            ));
  }
}
