// ignore_for_file: library_private_types_in_public_api, file_names, depend_on_referenced_packages

import 'dart:convert';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<Sports> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // ignore: unnecessary_this
    this.fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });

    var request = http.Request(
        'GET',
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=7269b488b8f84ff1ac8575ba0ac4df67'));
// http.StreamedResponse response = await request.send();

    http.StreamedResponse response = await request.send();
    var res = await http.Response.fromStream(response);
    // var url = "https://randomuser.me/api/?results=50";
    // var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var items = json.decode(res.body)["articles"];
      // if (kDebugMode) {
      //   print(items);
      // }
      setState(() {
        users = items;
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: getBody(),
    );
  }

  Widget getBody() {
    // ignore: prefer_is_empty
    if (users.contains(null) || users.length < 0 || isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext ctx, index) {
          // return ListTile(
          // leading: Image.network(
          //   users[index]["urlToImage"],
          //   width: 150,
          //   fit: BoxFit.cover,
          // ),
          //     title: Text(users[index]['title']),
          //     subtitle: Text(users[index]["author"]));
          return SizedBox(
            height: 340,
            width: 200,
            child: Card(
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(6), // Image border
                              // Image radius
                              child: Image.network(
                                users[index]["urlToImage"] ??
                                    'https://images.indianexpress.com/2022/10/liz-truss-6.jpg?w=475',
                                cacheHeight: 140,
                                cacheWidth: 300,
                                alignment: Alignment.topCenter,
                              ),
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, left: 11),
                          width: 130,
                          height: 15,
                          child: Text(
                            users[index]["source"]["name"],
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 11),
                                width: 40,
                                height: 15,
                                child: Text(
                                  users[index]["author"] ?? 'CNN' ?? 'CNN',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 11),
                                width: 130,
                                height: 15,
                                child: Text(
                                  users[index]['title'] ?? 'CNN',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, left: 11),
                          alignment: Alignment.center,
                          width: 250,
                          height: 40,
                          child: Text(
                            users[index]["description"] ??
                                'Liz Truss Resigns Live Updates: British Prime Minister Liz Truss today dramatically announced her resignation just six weeks after taking office.',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
