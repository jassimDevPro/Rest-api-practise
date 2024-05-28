import 'package:Rest_api_practise/constants/AppRoutes/RouteName.dart';
import 'package:Rest_api_practise/view/haroonapi2.dart';
import 'package:Rest_api_practise/view/sign_in.dart';
import 'package:Rest_api_practise/view/withoutmodel.dart.dart';
import 'package:Rest_api_practise/view/withoutmodel2.dart';
import 'package:flutter/material.dart';

import '../../view/haroonapi.dart';
import '../../view/homepage.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homepage:
        return MaterialPageRoute(
          builder: (context) => homepage(),
        );
      case RouteName.haroonapi:
        return MaterialPageRoute(
          builder: (context) => haroonapi(),
        );
      case RouteName.seconpageapi:
        return MaterialPageRoute(
          builder: (context) => SecondPageApi(),
        );
      case RouteName.withoutmodelapi:
        return MaterialPageRoute(
          builder: (context) => WithoutModelApi(),
        );
      case RouteName.withoutmodelapi2:
        return MaterialPageRoute(
          builder: (context) => WithoutModelApi2(),
        );
      case RouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => SignIn(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(" No Routes "),
              ),
            );
          },
        );
    }
  }
}
