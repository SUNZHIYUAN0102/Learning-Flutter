// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: LayoutDemo(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: Colors.red,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.spaceBetween,
        children: [
          MyButton("第一季"),
          MyButton("第一季, 第一季, 第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季")
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
