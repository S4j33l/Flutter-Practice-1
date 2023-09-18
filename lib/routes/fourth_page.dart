import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  bool isSwitchedToStatistics = false;
  bool isSwitchedToInformation = false;
  int bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(241, 250, 247, 1)),
        ),
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
              )),
        ),
        elevation: 0.0,
        title: Text("Dashboard", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.only(top: 45.0, left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/isaacClarkex4.jpg"),
                      ),
                      const SizedBox(width: 10.0),
                      Text("M.Sajeel",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 24.0)),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  Text("Navigation Panel",
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            const Divider(
              thickness: 2.0,
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
            ListTile(
                title: Text("Orders",
                    style: Theme.of(context).textTheme.displayMedium),
                leading: const Icon(Icons.alarm_rounded),
                onTap: () {
                  Navigator.of(context).popAndPushNamed("/fifth");
                }),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(241, 250, 247, 1),
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 140.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(205, 109, 243, 0.8),
                          Color.fromRGBO(205, 109, 243, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("NAME",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                        Text("M.Sajeel",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 140.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(1, 211, 254, 0.8),
                          Color.fromRGBO(1, 211, 254, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("DATE OF BIRTH",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                        Text("4/9/2003",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 140.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 120, 153, 0.8),
                          Color.fromRGBO(255, 120, 153, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("CONTACT",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                        Text("12345678910",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    height: 140.0,
                    width: 150.0,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(66, 227, 132, 0.8),
                          Color.fromRGBO(66, 227, 132, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("EMAIL",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                        Text("sjl@gmail.com",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    isSwitchedToStatistics = true;
                  },
                  child: Text("Statistics",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 26.0)),
                ),
                GestureDetector(
                  onTap: () {
                    isSwitchedToStatistics = true;
                  },
                  child: Text("Information",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 26.0)),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Degree",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
                Text("BE SE",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Position",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
                Text("Mob Dev Intern",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Age",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
                Text("Undefined",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 20.0)),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            bottomNavigationBarIndex = value;
          });
        },
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        currentIndex: bottomNavigationBarIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
