import 'dart:convert';
import 'package:Rest_api_practise/Model/Getmodel3/Getmodel3.dart';
import 'package:Rest_api_practise/constants/AppRoutes/RouteName.dart';
import 'package:Rest_api_practise/view/post_class.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class haroonapi extends StatelessWidget {
  late final ind;
  haroonapi({Key? key, this.ind}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: FutureBuilder<Getmodel3>(
              future: get3api(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Container(
                        height: 800,
                        width: 400,
                        child: ListView.builder(
                          itemCount: snapshot.data!.result!.data!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Postclass p = Postclass();
                                p.setId(index);
                                p.getId();
                                print('${p.getId()}');
                            
                                Navigator.pushNamed(
                                    context, RouteName.seconpageapi);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 150,
                                      width: 400,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 400,
                                            child: Image.network(
                                                "https://pakistanpropertyportal.com/storage/"
                                                '${snapshot.data!.result!.data![index].pictures![0].filename}'),
                                            // child: ListView.builder(
                                            //   scrollDirection: Axis.horizontal,
                                            //   itemCount: snapshot.data!.result!
                                            //       .data![index].pictures!.length,
                                            //   itemBuilder: (context, picindex) {
                                            //     // return Text(snapshot
                                            //     //     .data!
                                            //     //     .result!
                                            //     //     .data![index]
                                            //     //     .pictures![pic]
                                            //     //     .filename
                                            //     //     .toString());
                            
                                            //     return Column(
                                            //       children: [
                                            //         Padding(
                                            //           padding:
                                            //               const EdgeInsets.only(
                                            //                   left: 5),
                                            //           child: Container(
                                            //             height: 100,
                                            //             width: 200,
                                            //             child: Image.network(
                                            //               "https://pakistanpropertyportal.com/storage/"
                                            //               '${snapshot.data!.result!.data![index].pictures![picindex].filename}',
                                            //               fit: BoxFit.fill,
                                            //             ),
                                            //           ),
                                            //         ),
                                            //         Container(
                                            //           height: 50,
                                            //           width: 400,
                                            //           child: Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .spaceAround,
                                            //             children: [
                                            //               Container(
                                            //                 alignment:
                                            //                     Alignment.center,
                                            //                 height: 30,
                                            //                 width: 90,
                                            //                 child: Text(snapshot
                                            //                     .data!
                                            //                     .result!
                                            //                     .data![index]
                                            //                     .price
                                            //                     .toString()),
                                            //               ),
                                            //               Container(
                                            //                 height: 30,
                                            //                 width: 100,
                                            //                 child: Html(
                                            //                     data: snapshot
                                            //                         .data!
                                            //                         .result!
                                            //                         .data![index]
                                            //                         .created_At_Formatted
                                            //                         .toString(),
                                            //                     style: {
                                            //                       'table': Style(
                                            //                           color: Colors
                                            //                               .yellow)
                                            //                     }),
                                            //               )
                                            //             ],
                                            //           ),
                                            //         )
                                            //       ],
                                            //     );
                                            //   },
                                            // ),
                                          ),
                                          Container(
                                            height: 50,
                                            width: 400,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  height: 30,
                                                  width: 90,
                                                  child: Text(snapshot
                                                      .data!
                                                      .result!
                                                      .data![index]
                                                      .price
                                                      .toString()),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  child: Html(
                                                      data: snapshot
                                                          .data!
                                                          .result!
                                                          .data![index]
                                                          .created_At_Formatted
                                                          .toString(),
                                                      style: {
                                                        'table': Style(
                                                            color:
                                                                Colors.yellow)
                                                      }),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          )
        ],
      )),
    ));
  }
}
