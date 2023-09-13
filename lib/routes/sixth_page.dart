import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GET API call",
              style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (content, index) {}));
  }
}
