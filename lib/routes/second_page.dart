import 'package:flutter/material.dart';
import 'package:internship_application_1/constants/constants.dart';
import 'package:internship_application_1/customicons/custom_icons.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage("assets/images/ship's helm.png")),
              const Text(
                Constants.secondPageText1,
                style: TextStyle(
                  fontFamily: "Barlow",
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: const Text("Email"),
                    suffixIcon: emailController.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => emailController.clear(),
                            icon: const Icon(Icons.close),
                          ),
                  ),
                ),
              ),
              // const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: const Text("Password"),
                    suffixIcon: passwordController.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => passwordController.clear(),
                            icon: const Icon(Icons.visibility),
                          ),
                  ),
                  obscureText: true,
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(Constants.secondPageText3),
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
                  Navigator.of(context).pushNamed("/third");
                },
                child: const Text(
                  Constants.secondPageText4,
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
              const Text(
                Constants.secondPageText7,
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: "Barlow",
                  fontWeight: FontWeight.bold,
                ),
              ),
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
