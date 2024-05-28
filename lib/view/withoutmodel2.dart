import 'dart:convert';

import 'package:Rest_api_practise/view/post_class.dart';
import 'package:Rest_api_practise/view/withoutmodel.dart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/Getmodel3/Getmodel3.dart';
import 'haroonapi.dart';

class WithoutModelApi2 extends StatelessWidget {
  var data;
  WithoutModelApi2({Key? key}) : super(key: key);
  Future<void> get3api() async {
    final response = await http.get(Uri.parse(
        'https://pakistanpropertyportal.com/api/posts/data?page=1&size=10'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  Postclass p = Postclass();

  @override
  Widget build(BuildContext context) {
    print('${p.index}');
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 300,
                width: 400,
                color: Colors.grey,
                child: FutureBuilder(
                  future: get3api(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: 400,
                              child: ListView.builder(
                                itemCount: data["result"]["data"][id]
                                        ["pictures"]
                                    .length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 400,
                                          child: Image.network(
                                              "https://pakistanpropertyportal.com/storage/"
                                              '${data["result"]["data"][id]["pictures"][index]["filename"]}'))
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
