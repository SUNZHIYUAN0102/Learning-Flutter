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
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  //自定义方法
  // List<Widget> _getData() {
  //   var list = <Widget>[];
  //   for (var i = 0; i < 20; i++) {
  //     list.add(ListTile(
  //       title: Text("我是第${i + 1}个列表"),
  //     ));
  //   }
  //   return list;
  // }

  // List<Widget> _getData() {
  //   var tempList = listData.map((e) {
  //     return ListTile(
  //       leading: Image.network(e["imageUrl"]),
  //       title: Text(e["title"]),
  //       subtitle: Text(e["content"]),
  //     );
  //   });
  //   return tempList.toList();
  // }

  List list = [];
  HomeContent() {
    // for (var i = 0; i < 20; i++) {
    //   this.list.add(ListTile(
    //         title: Text("我是第${i + 1}个列表"),
    //       ));
    // }
  }

  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["content"]),
      leading: Image.network(listData[index]["imageUrl"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: this._getData(),
    // );

    // return ListView.builder(
    //   itemCount: this.list.length,
    //   itemBuilder: ((context, index) {
    //     return this.list[index];
    //   }),
    // );

    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
