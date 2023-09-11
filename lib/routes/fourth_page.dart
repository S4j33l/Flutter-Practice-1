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
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.black38,
                Colors.orange,
                Colors.white,
                Colors.lightBlue,
              ],
            ),
          ),
        ),
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
              padding: const EdgeInsets.only(top: 50.0, left: 16.0),
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
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.black38,
              Colors.orange,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 12.0),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("NAME",
                              style: Theme.of(context).textTheme.displayMedium),
                          Text("M.Sajeel",
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("DATE OF BIRTH",
                              style: Theme.of(context).textTheme.displayMedium),
                          Text("4/9/2003",
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("CONTACT",
                              style: Theme.of(context).textTheme.displayMedium),
                          Text("12345678910",
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("EMAIL",
                              style: Theme.of(context).textTheme.displayMedium),
                          Text("sajeel321@gmail.com",
                              style: Theme.of(context).textTheme.displayMedium),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            isSwitchedToStatistics = true;
                          },
                          child: Text("Statistics",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 24.0))),
                      const SizedBox(height: 30.0),
                      Text("Degree",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                      const SizedBox(height: 30.0),
                      Text("Position",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                      const SizedBox(height: 30.0),
                      Text("Age",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Text("Information",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 24.0))),
                      const SizedBox(height: 30.0),
                      Text("BS SE",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                      const SizedBox(height: 30.0),
                      Text("Intern",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                      const SizedBox(height: 30.0),
                      Text("Undefined",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(fontSize: 24.0)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black38,
            Colors.orange,
            Colors.lightBlue,
          ]),
        ),
        child: BottomNavigationBar(
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
      ),
    );
  }
}
