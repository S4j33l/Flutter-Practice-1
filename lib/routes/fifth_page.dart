import 'package:flutter/material.dart';
import 'package:internship_application_1/helpers/orders_view.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Orders.orders.length,
        itemBuilder: (context, index) => Container(
          color: Colors.cyan[800],
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: Card(
              elevation: 0.0,
              margin: const EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Icon(Icons.shopping_bag_rounded),
                      Column(
                        children: <Widget>[
                          Text(Orders.orders[index],
                              style: Theme.of(context).textTheme.displayMedium),
                          Text("Price: ${Orders.orderPrices[index]}")
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Deliver?",
                              style: Theme.of(context).textTheme.displayMedium)),
                    ],
                  ),
                  const Divider(indent: 35.0, endIndent: 35.0, thickness: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(DateTime.now().toString()),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Details",
                              style: Theme.of(context).textTheme.displayMedium)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
