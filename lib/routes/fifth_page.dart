import 'package:flutter/material.dart';
import 'package:internship_application_1/helpers/orders_view.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.blue),
        ),
      ),
      body: ListView.builder(
        itemCount: Orders.orders.length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey[400],
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(width: 20.0),
                    const Icon(Icons.shopping_bag_rounded),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(Orders.orders[index],
                            style: Theme.of(context).textTheme.displayMedium),
                        Text("Price: ${Orders.orderPrices[index]}")
                      ],
                    ),
                    const SizedBox(width: 119.0),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.black),
                            elevation: 0.0,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)))),
                        onPressed: () {},
                        child: Text("Deliver?",
                            style: Theme.of(context).textTheme.displayMedium)),
                  ],
                ),
                const Divider(indent: 23.0, endIndent: 23.0, thickness: 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Date: ${DateTime.now().toString()}"),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)))),
                        onPressed: () {},
                        child: Text("Details",
                            style: Theme.of(context).textTheme.displayMedium)),
                  ],
                )
              ],
            ),
          ),
        ),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
