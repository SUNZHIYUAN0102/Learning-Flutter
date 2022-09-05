import 'package:flutter/material.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/tabs/tabs.dart';
import '../pages/product.dart';
import '../pages/productInfo.dart';
import '../pages/User/login.dart';
import '../pages/User/registerFirst.dart';
import '../pages/User/registerSecond.dart';
import '../pages/User/registerThird.dart';

final routes = {
  "/": (context) => Tabs(),
  "/form": (context) => FormPage(),
  "/search": (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  "/product": (context) => ProductPage(),
  "/productInfo": (context, {arguments}) => ProductInfo(
        arguments: arguments,
      ),
  "/login": (context) => LoginPage(),
  "/registerFirst": (context) => RegisterFirstPage(),
  "/registerSecond": (context) => RegisterSecondPage(),
  "/registerThird": (context) => RegisterThirdPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
