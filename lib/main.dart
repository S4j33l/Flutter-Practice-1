import 'package:flutter/material.dart';
import 'package:internship_application_1/routes/first_page.dart';
import 'package:internship_application_1/routes/second_page.dart';
import 'package:internship_application_1/routes/third_page.dart';
import 'package:internship_application_1/routes/fourth_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginScreenExample(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black26)),
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
      initialRoute: '/first',
      routes: {
        "/first": (_) => const FirstPage(),
        "/second": (_) => const SecondPage(),
        "/third": (_) => const ThirdPage(),
        "/fourth": (_) => const FourthPage(),
      },
    ),
  );
}

class LoginScreenExample extends StatelessWidget {
  const LoginScreenExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}
