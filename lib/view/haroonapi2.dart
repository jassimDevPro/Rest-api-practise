import 'dart:convert';

import 'package:Rest_api_practise/view/post_class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/Getmodel3/Getmodel3.dart';
import 'haroonapi.dart';

class SecondPageApi extends StatelessWidget {
  SecondPageApi({Key? key}) : super(key: key);
  Future<Getmodel3> get3api() async {
    final response = await http.get(Uri.parse(
        'https://pakistanpropertyportal.com/api/posts/data?page=1&size=10'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return Getmodel3.fromJson(data);
    } else {
      print('error');
      return Getmodel3.fromJson(data);
    }
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
                child: FutureBuilder<Getmodel3>(
                  future: get3api(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              width: 400,
                              child: ListView.builder(
                                itemCount: snapshot.data!.result!
                                    .data![p.index!].pictures!.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 400,
                                          child: Image.network(
                                              "https://pakistanpropertyportal.com/storage/"
                                              '${snapshot.data!.result!.data![p.index!].pictures![index].filename}'))
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
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
