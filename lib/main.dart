// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/tabs/tabs.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
