// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "yuanyuanyuan",
          overflow: TextOverflow.ellipsis,
          // overflow: TextOverflow.fade,
          maxLines: 1,
          textScaleFactor: 2,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0,
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.pink,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
              //Radius.circular(150) 圆形
            )),
        //padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(10, 20, 50, 20),
        //transform: Matrix4.translationValues(100, 0, 0),
        //transform: Matrix4.rotationZ(0.3),
        //transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
