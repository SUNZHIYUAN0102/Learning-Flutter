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
      // child: Container(
      //   width: 300,
      //   height: 300,
      //   decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     // borderRadius: BorderRadius.all(
      //     //   Radius.circular(20),
      //     // ),
      //     borderRadius: BorderRadius.circular(150),
      //     image: DecorationImage(
      //       image: NetworkImage("https://picsum.photos/id/237/200/200"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   // child: Image.network(
      //   //   "https://picsum.photos/id/237/200/200",
      //   //   alignment: Alignment.center,
      //   //   // color: Colors.yellow,
      //   //   // colorBlendMode: BlendMode.colorDodge,
      //   //   // fit: BoxFit.cover,
      //   //   // fit: BoxFit.contain,
      //   //   // repeat: ImageRepeat.repeatX,
      //   // ),
      // ),

      child: Container(
        width: 200,
        height: 200,
        child: ClipOval(
          // child: Image.network(
          //   "https://picsum.photos/id/237/200/200",
          // ),
          child: Image.asset(
            "images/avatar.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
