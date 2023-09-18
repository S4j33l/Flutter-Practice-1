import 'package:flutter/material.dart';
import 'package:internship_application_1/customicons/custom_icons.dart';
import 'package:internship_application_1/widgets/my_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/images/ship's helm2.0.png",
                ),
              ),
              SizedBox(height: screenHeight / 16),
              Center(
                child: Text("Log in now",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(height: screenHeight / 56),
              Text("Please login to continue using our app ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyTextField(controller: emailController, label: "Email"),
              ),
              SizedBox(height: screenHeight / 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyTextField(
                  controller: passwordController,
                  label: "Password",
                  obscured: true,
                ),
              ),
              SizedBox(height: screenHeight / 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                            getRememberMeValue(rememberMe);
                          });
                        }),
                  ),
                  Text("Remember me?",
                      style: Theme.of(context).textTheme.displayMedium),
                  const SizedBox(width: 45.0),
                  GestureDetector(
                    onTap: () => showForgotPasswordDialog(context),
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ],
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
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            const Center(child: CircularProgressIndicator()));
                    await postUsernameAndPassword(
                        emailController.text, passwordController.text);
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/fourth");
                  },
                  child: Text("Log In",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white)),
                ),
              ),
              SizedBox(height: screenHeight / 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/third");
                    },
                    child: Text("Sign Up",
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 36),
              Center(
                child: Text("Or connect with:",
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
              SizedBox(
                height: screenHeight / 24,
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
              backgroundColor: Colors.white,
              title: Text(
                "Forgot Password?",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              content: SizedBox(
                height: 210.0,
                child: Column(
                  children: <Widget>[
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter New Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Confirm New Password",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                    ),
                    const SizedBox(height: 25.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Confirm",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  Future<void> getRememberMeValue(bool rememberMeValue) async {
    var preferences = await SharedPreferences.getInstance();
    preferences.setBool("rememberMe", rememberMeValue);
  }

  Future postUsernameAndPassword(String email, String password) async {
    try {
      var response =
          await http.post(Uri.parse("https://dummyjson.com/auth/login"), body: {
        "username": email,
        "password": password,
      });
      print("email: $email and password: $password");
      if (response.statusCode == 200) {
        print("POST request successful");
        print("code is 200");
      }
    } catch (e) {
      throw Exception("Please try again");
    }
  }
}
