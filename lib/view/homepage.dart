import 'dart:convert';

import 'package:Rest_api_practise/Model/getmodel2/getmodel2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Model/getmodel1/getmodel1.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Getmodel1> getlist = [];
  List<Getmodel2> getlist2 = [];

  Future<List<Getmodel2>> getapi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> k in data) {
        getlist2.add(Getmodel2.fromJson(k));
      }
      return getlist2;
    } else {
      return getlist2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getapi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Column(
                    children: [
                      Text('Loading'),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: getlist2.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        width: 200,
                        child: Image.network(getlist2[index].url.toString()),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      )),
    );
  }
}
