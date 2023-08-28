import 'package:flutter/material.dart';
import 'package:internship_application_1/routes/first_page.dart';
import 'package:internship_application_1/routes/second_page.dart';
import 'package:internship_application_1/routes/third_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginScreenExample(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/first',
      routes: {
        "/first": (_) => const FirstPage(),
        "/second": (_) => const SecondPage(),
        "/third":(_) => const ThirdPage(), 
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
