import 'package:fluttertoast/fluttertoast.dart';

class InputValidation {
  static bool emailValidatonToast(String email) {
    bool isEmailCorrect = false;
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      isEmailCorrect = false;
      Fluttertoast.showToast(
          msg: "Your email is not in the correct format",
          toastLength: Toast.LENGTH_SHORT);
    } else {
      isEmailCorrect = true;
    }
    return isEmailCorrect;
  }

  static bool passwordValidatonToast(String password) {
    bool isPasswordCorrect = false;
    if (password.length < 8) {
      isPasswordCorrect = true;
      Fluttertoast.showToast(
          msg: "Your password is too short", toastLength: Toast.LENGTH_SHORT);
    } else {
      isPasswordCorrect = false;
    }
    return isPasswordCorrect;
  }

  static bool nameValidatonToast(String name) {
    bool isNameCorrect = false;
    if (RegExp(r'\d').hasMatch(name)) {
      isNameCorrect = false;
      Fluttertoast.showToast(
          msg: "Your name should not contain numbers",
          toastLength: Toast.LENGTH_SHORT);
    } else {
      isNameCorrect = true;
    }
    return isNameCorrect;
  }
}
