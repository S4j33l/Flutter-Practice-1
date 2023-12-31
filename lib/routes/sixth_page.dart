import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:internship_application_1/helpers/dummy_json.dart';
import 'package:http/http.dart' as http;

class SixthPage extends StatefulWidget {
  const SixthPage({super.key});

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  List<DummyJson> dJList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET API call",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 22, 39, 1),
      ),
      body: FutureBuilder<List<DummyJson>>(
        future: getDummyjson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: 10,
                itemBuilder: (content, index) {
                  return Container(
                    color: const Color.fromRGBO(25, 22, 39, 1),
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: index % 2 != 0
                          ? const Color.fromRGBO(251, 115, 117, 1)
                          : const Color.fromRGBO(72, 203, 101, 1),
                      elevation: 0.0,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("ID: ${dJList[index].id}",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                      decoration: TextDecoration.underline)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Title: ${dJList[index].title}",
                              style: Theme.of(content)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                          const Divider(thickness: 3),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Body: ${dJList[index].body}",
                              style: Theme.of(content)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            deleteDummyjson(dJList[0].id);
          });
        },
        child: const Icon(Icons.delete),
      ),
    );
  }

  Future<List<DummyJson>> getDummyjson() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        dJList.add(DummyJson.fromJson(index));
      }
      return dJList;
    } else {
      return dJList;
    }
  }

  Future<dynamic> deleteDummyjson(int id) async {
    final response = await http
        .delete(Uri.parse("https://jsonplaceholder.typicode.com/posts/$id"));
    dJList.removeAt(id);
    if (response.statusCode == 200) {
    }
    return dJList;
  }
}
