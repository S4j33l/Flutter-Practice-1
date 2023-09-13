import 'package:flutter/material.dart';
import 'package:internship_application_1/routes/fifth_page.dart';
import 'package:internship_application_1/routes/first_page.dart';
import 'package:internship_application_1/routes/second_page.dart';
import 'package:internship_application_1/routes/sixth_page.dart';
import 'package:internship_application_1/routes/third_page.dart';
import 'package:internship_application_1/routes/fourth_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      home: const InternshipProject(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: Colors.black26)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue)),
        fontFamily: "Barlow",
        textTheme: TextTheme(
          titleLarge: const TextStyle(
              fontSize: 36.0,
              color: Colors.black54,
              fontWeight: FontWeight.w800),
          displayMedium: const TextStyle(
              fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
              fontWeight: FontWeight.w600),
        ),
      ),
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
    if (isLoggedIn == null) {
      Navigator.pushReplacementNamed(context, "/first");
    } else {
      if (isLoggedIn == true) {
        Navigator.pushReplacementNamed(context, "/fourth");
      } else {
        Navigator.pushReplacementNamed(context, "/first");
      }
    }
    await preferences.clear();
  }
}
