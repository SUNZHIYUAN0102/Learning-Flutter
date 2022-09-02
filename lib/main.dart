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
    //padding: EdgeInsets.all(10),
    // ignore: prefer_const_literals_to_create_immutables

    //垂直列表
    // children: <Widget>[
    //   ListTile(
    //     leading: Icon(
    //       Icons.settings,
    //       color: Colors.yellow,
    //       size: 40,
    //     ),
    //     title: Text(
    //       "handsome little yuan yuan yuan",
    //       style: TextStyle(fontSize: 18),
    //     ),
    //     subtitle: Text("yuan yuan yuan yuan yuan yuan yuan"),
    //     trailing: Icon(Icons.abc),
    //   ),
    //   ListTile(
    //     leading: Image.network("https://picsum.photos/id/237/200/200"),
    //     title: Text("handsome little yuan yuan yuan"),
    //     subtitle: Text("yuan yuan yuan yuan yuan yuan yuan"),
    //     trailing: Image.network("https://picsum.photos/id/237/200/300"),
    //   ),
    //   ListTile(
    //     leading: Icon(Icons.pages),
    //     title: Text("handsome little yuan yuan yuan"),
    //     subtitle: Text("yuan yuan yuan yuan yuan yuan yuan"),
    //   )
    // ],

    //垂直图文列表
    // children: <Widget>[
    //   Image.network("https://picsum.photos/id/237/500/500"),
    //   Container(
    //     child: Text(
    //       "Title",
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //         fontSize: 18,
    //       ),
    //     ),
    //     height: 40,
    //     padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
    //   ),
    //   Image.network("https://picsum.photos/id/237/500/500"),
    //   Image.network("https://picsum.photos/id/237/500/500"),
    //   Image.network("https://picsum.photos/id/237/500/500"),
    //   Image.network("https://picsum.photos/id/237/500/500"),
    // ],

    //水平列表
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.deepPurpleAccent,
            child: ListView(
              children: <Widget>[
                Image.network("https://picsum.photos/id/237/100/100"),
                Image.network("https://picsum.photos/id/237/100/100"),
              ],
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
