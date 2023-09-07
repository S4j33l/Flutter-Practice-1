import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  int bottomNavigationBarIndex = 0;
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
          children: <Widget>[
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
        margin: const EdgeInsets.only(
          top: 12.0,
          left: 12.0,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
            ),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text("Statistics",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: 24.0))),
                    const SizedBox(height: 20.0),
                    Text("Name",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 28.0)),
                    const SizedBox(height: 20.0),
                    Text("Position",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 28.0)),
                    const SizedBox(height: 20.0),
                    Text("Age",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 28.0)),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              bottomNavigationBarIndex = value;
            });
          },
          currentIndex: bottomNavigationBarIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
