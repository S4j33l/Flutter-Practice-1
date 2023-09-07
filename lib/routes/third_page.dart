import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internship_application_1/constants/constants.dart';
import 'package:internship_application_1/customicons/custom_icons.dart';
import 'package:internship_application_1/helpers/input_validator.dart';
import 'package:progress_indicators/progress_indicators.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({
    super.key,
  });

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool dateHasBeenSelected = false;
  bool isLoggedIn = false;
  File? imageFile;
  int? radioButtonValue = -1;
  bool? selectedRecipeIsBiryani = false;
  bool? selectedRecipeIsNehari = false;
  bool? selectedRecipeIsPulao = false;
  bool? selectedRecipeIsTikka = false;
  String? dropdownValue;
  bool isEmailCorrect = false;
  bool isPasswordCorrect = false;
  bool isNameCorrect = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: false,
            children: <Widget>[
              SizedBox(height: screenHeight / 8),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/fourth");
                },
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/images/ship's helm2.0.png",
                  ),
                ),
              ),
              Center(
                child: Text(Constants.thirdPageText1,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(height: screenHeight / 48),
              Text(Constants.thirdPageText2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium),
              SizedBox(height: screenHeight / 48),
              GestureDetector(
                onTap: () => getImage(source: ImageSource.gallery),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.deepPurple),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: imageFile != null
                          ? FileImage(imageFile!)
                          : const AssetImage("assets/images/default.jpg")
                              as ImageProvider,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text(
                      "Name",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    label: Text("Email",
                        style: Theme.of(context).textTheme.displayMedium),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 64),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid),
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
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: screenHeight / 48),
                    Text("Please select your gender:",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Radio(
                          value: 0,
                          groupValue: radioButtonValue,
                          toggleable: true,
                          onChanged: (value) => setState(() {
                            radioButtonValue = value;
                          }),
                        ),
                        Text("Male",
                            style: Theme.of(context).textTheme.displayMedium),
                        const SizedBox(width: 30.0),
                        Radio(
                          value: 1,
                          groupValue: radioButtonValue,
                          toggleable: true,
                          onChanged: (value) => setState(() {
                            radioButtonValue = value;
                          }),
                        ),
                        Text("Female",
                            style: Theme.of(context).textTheme.displayMedium),
                      ],
                    ),
                    Text("Please select your favorite recipe:",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Checkbox(
                            value: selectedRecipeIsBiryani,
                            onChanged: (value) {
                              setState(() {
                                selectedRecipeIsBiryani = value;
                              });
                            }),
                        Text("Biryani",
                            style: Theme.of(context).textTheme.displayMedium),
                        Checkbox(
                            value: selectedRecipeIsPulao,
                            onChanged: (value) {
                              setState(() {
                                selectedRecipeIsPulao = value;
                              });
                            }),
                        Text("Pulao",
                            style: Theme.of(context).textTheme.displayMedium),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: selectedRecipeIsNehari,
                            onChanged: (value) {
                              setState(() {
                                selectedRecipeIsNehari = value;
                              });
                            }),
                        Text("Nehari",
                            style: Theme.of(context).textTheme.displayMedium),
                        const SizedBox(width: 3.0),
                        Checkbox(
                            value: selectedRecipeIsTikka,
                            onChanged: (value) {
                              setState(() {
                                selectedRecipeIsTikka = value;
                              });
                            }),
                        Text("Tikka",
                            style: Theme.of(context).textTheme.displayMedium),
                      ],
                    ),
                    Text("Please select your country:",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          hint: const Text("Select your country"),
                          value: dropdownValue,
                          items: const [
                            DropdownMenuItem(
                                value: "Russia", child: Text("Russia")),
                            DropdownMenuItem(
                                value: "Spain", child: Text("Spain")),
                            DropdownMenuItem(
                                value: "Japan", child: Text("Japan")),
                            DropdownMenuItem(
                                value: "Indonesia", child: Text("Indonesia")),
                            DropdownMenuItem(
                                value: "Turkey", child: Text("Turkey")),
                          ],
                          onChanged: (value) {
                            setState(() {
                              dropdownValue = value;
                            });
                          }),
                    ),
                    Text(
                      "Please select your date of birth: ",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: screenHeight / 56),
                    Center(
                      child: Text(
                        dateHasBeenSelected
                            ? "${selectedDate?.day} - ${selectedDate?.month} - ${selectedDate?.year}"
                            : "",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () async {
                            DateTime? datePick = await showDatePicker(
                                builder: (context, child) => DatePickerTheme(
                                    data: DatePickerThemeData(
                                      headerBackgroundColor: Colors.black,
                                      backgroundColor: Colors.white,
                                      headerHeadlineStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      weekdayStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      dayStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      yearStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      dayBackgroundColor:
                                          MaterialStateProperty.all<Color?>(
                                        Colors.white,
                                      ),
                                      dayForegroundColor:
                                          MaterialStateProperty.all<Color?>(
                                        Colors.black,
                                      ),
                                      dayOverlayColor:
                                          MaterialStateProperty.all<Color?>(
                                              Colors.black),
                                    ),
                                    child: child!),
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1993),
                                lastDate: DateTime(2024));
                            if (datePick != null) {
                              setState(() {
                                if (datePick.year > 2005) {
                                  showDialog(
                                      context: context,
                                      builder: ((context) => AlertDialog(
                                            backgroundColor: Colors.white,
                                            title: Text(
                                                "Your age must be over 18",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium),
                                            content: Text(
                                                "Please reselect your age!",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium),
                                          )));
                                } else {
                                  selectedDate = datePick;
                                  dateHasBeenSelected = true;
                                }
                              });
                            }
                          },
                          child: Text("Select",
                              style:
                                  Theme.of(context).textTheme.displayMedium)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onPressed: () {
                    if (InputValidation.nameValidatonToast(
                        nameController.text)) {
                      print(nameController.text);
                      isNameCorrect = true;
                    }
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
                    setState(() {
                      if (isEmailCorrect &&
                          isPasswordCorrect &&
                          isNameCorrect) {
                        return;
                      } else {
                        buildShowDialog(context);
                        Future.delayed(const Duration(seconds: 3))
                            .then((value) {
                          Navigator.of(context).pushNamed("/first");
                        });
                        Fluttertoast.showToast(
                          msg: "Successfully validated",
                        );
                      }
                    });
                  },
                  child: Text(Constants.thirdPageText3,
                      style: Theme.of(context).textTheme.displayMedium),
                ),
              ),
              SizedBox(height: screenHeight / 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(Constants.secondPageText6,
                      style: Theme.of(context).textTheme.displayMedium),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/second");
                    },
                    child: Text(Constants.thirdPageText4,
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
              SizedBox(height: screenHeight / 24),
            ],
          ),
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }

  buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: JumpingText(
              "Please Wait...",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 42.0, color: Colors.white),
            ),
          );
        });
  }
}
