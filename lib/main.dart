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
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Stack(
    //     alignment: Alignment(0, 0),
    //     children: [
    //       Container(
    //         width: 400,
    //         height: 300,
    //         color: Colors.red,
    //       ),
    //       Text(
    //         "this is str",
    //         style: TextStyle(
    //           fontSize: 40,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // return Center(
    //   child: Container(
    //     width: 300,
    //     height: 400,
    //     color: Colors.red,
    //     child: Stack(
    //       children: [
    //         Align(
    //           alignment: Alignment.center,
    //           child: Icon(
    //             Icons.home,
    //             size: 40,
    //             color: Colors.white,
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.topLeft,
    //           child: Icon(
    //             Icons.search,
    //             size: 30,
    //             color: Colors.blue,
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.bottomRight,
    //           child: Icon(
    //             Icons.sunny,
    //             size: 60,
    //             color: Colors.orange,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              child: Icon(
                Icons.home,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 120,
              top: 170,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Icon(
                Icons.sunny,
                size: 60,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
