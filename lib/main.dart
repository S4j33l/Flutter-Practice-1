import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_application_1/routes/fifth_page.dart';
import 'package:internship_application_1/routes/first_page.dart';
import 'package:internship_application_1/routes/second_page.dart';
import 'package:internship_application_1/routes/sixth_page.dart';
import 'package:internship_application_1/routes/third_page.dart';
import 'package:internship_application_1/routes/fourth_page.dart';
import 'package:internship_application_1/theme/my_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(94, 200, 248, 1),
  ));
  runApp(
    MaterialApp(
      home: const InternshipProject(),
      theme: myProjectTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/first",
      routes: {
        "/first": (_) => const FirstPage(),
        "/second": (_) => const SecondPage(),
        "/third": (_) => const ThirdPage(),
        "/fourth": (_) => const FourthPage(),
        "/fifth": (_) => const FifthPage(),
        "/sixth": (_) => const SixthPage(),
      },
    ),
  );
}

class InternshipProject extends StatefulWidget {
  const InternshipProject({super.key});

  @override
  State<InternshipProject> createState() => _InternshipProjectState();
}

class _InternshipProjectState extends State<InternshipProject> {
  @override
  void initState() {
    super.initState();
    rememberMeChecker();
  }

  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }

  void rememberMeChecker() async {
    var preferences = await SharedPreferences.getInstance();
    bool? isLoggedIn = preferences.getBool("rememberMe");
    if (isLoggedIn == null && context.mounted) {
      Navigator.pushReplacementNamed(context, "/first");
    } else {
      if (isLoggedIn == true && context.mounted) {
        Navigator.pushReplacementNamed(context, "/fourth");
      } else {
        if (context.mounted) {
          Navigator.pushReplacementNamed(context, "/first");
        }
      }
    }
    await preferences.clear();
  }
}
