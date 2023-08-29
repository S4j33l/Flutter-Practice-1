import 'package:fluttertoast/fluttertoast.dart';

class InputValidation {
  static bool emailValidatonToast(String email) {
    bool isEmailCorrect = false;
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email)) {
      Fluttertoast.showToast(
          msg: "Your email is not in the correct format",
          toastLength: Toast.LENGTH_SHORT);
      isEmailCorrect = false;
    } else {
      isEmailCorrect = true;
    }
    return isEmailCorrect;
  }

  static bool passwordValidatonToast(String password, bool isEmailCorrect) {
    bool isPasswordCorrect = false;
    if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password)) {
      if (isEmailCorrect) {
        Fluttertoast.showToast(
            msg: "Your password is not in the correct format",
            toastLength: Toast.LENGTH_SHORT);
        isPasswordCorrect = false;
      }
    } else {
      isPasswordCorrect = true;
    }
    return isPasswordCorrect;
  }

  static bool nameValidatonToast(String name) {
    bool isNameCorrect = false;
    if (RegExp(r'\d').hasMatch(name)) {
      Fluttertoast.showToast(
          msg: "Your name should not contain numbers",
          toastLength: Toast.LENGTH_SHORT);
      isNameCorrect = false;
    } else {
      isNameCorrect = true;
    }
    return isNameCorrect;
  }
}
