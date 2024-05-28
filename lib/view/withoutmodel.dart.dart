import 'dart:convert';
import 'package:Rest_api_practise/Model/Getmodel3/Getmodel3.dart';
import 'package:Rest_api_practise/constants/AppRoutes/RouteName.dart';
import 'package:Rest_api_practise/view/post_class.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

int? id;

class WithoutModelApi extends StatelessWidget {
  var data;
  WithoutModelApi({
    Key? key,
  }) : super(key: key);
  Future<void> get3api() async {
    final response = await http.get(Uri.parse(
        'https://pakistanpropertyportal.com/api/posts/data?page=1&size=10'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: get3api(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  print(snapshot.data.toString());
                  return Column(
                    children: [
                      Container(
                          height: 800,
                          width: 400,
                          child: ListView.builder(
                            itemCount: data["result"]["data"].length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      id = index;
                                      Navigator.pushNamed(
                                          context, RouteName.withoutmodelapi2);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 150,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 400,
                                              child: Image.network(
                                                  "https://pakistanpropertyportal.com/storage/"
                                                  '${data["result"]["data"][index]["pictures"][0]["filename"]}'),
                                            ),
                                            Container(
                                              height: 50,
                                              width: 400,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 30,
                                                      width: 90,
                                                      child: Text(data["result"]
                                                                  ["data"]
                                                              [index]["price"]
                                                          .toString()),
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 100,
                                                      child: Html(
                                                          data: data["result"][
                                                                          "data"]
                                                                      [index][
                                                                  "created_at_formatted"]
                                                              .toString(),
                                                          style: {
                                                            'table': Style(
                                                                color: Colors
                                                                    .yellow)
                                                          }),
                                                    )
                                                  ]),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ))
                    ],
                  );
                }
              },
            ),
          )
        ],
      )),
    ));
  }
}
