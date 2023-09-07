import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.only(top: 80.0, left: 20.0),
              child: Text("Navigation Panel",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            ListTile(
              title: Text("Go to 1st page ",
                  style: Theme.of(context).textTheme.displayMedium),
              leading: const Icon(Icons.one_k),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/first");
              },
            ),
            ListTile(
              title: Text("Go to 2nd page ",
                  style: Theme.of(context).textTheme.displayMedium),
              leading: const Icon(Icons.two_k),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/second");
              },
            ),
            ListTile(
              title: Text("Go to 3rd page ",
                  style: Theme.of(context).textTheme.displayMedium),
              leading: const Icon(Icons.three_k),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/third");
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 12.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  children: <Widget>[],
                ),
              )
              ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    color: Colors.green,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("NAME",
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("DATE OF BIRTH",
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    color: Colors.lightBlue[200],
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("CONTACT",
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    color: Colors.indigo[300],
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("EMAIL",
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
