import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const SizedBox(
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}