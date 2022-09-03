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
  // List<Widget> _getListData() {
  //   List<Widget> list = [];
  //   for (var i = 0; i < 20; i++) {
  //     list.add(Container(
  //       alignment: Alignment.center,
  //       color: Colors.orange,
  //       height: 400, //无法设置高度
  //       child: Text(
  //         "this is ${i + 1} item",
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 16,
  //         ),
  //       ),
  //     ));
  //   }
  //   return list;
  // }

  // List<Widget> _getListData() {
  //   List<Widget> list = [];
  //   list = listData.map((e) {
  //     return Container(
  //       child: Column(
  //         children: [
  //           Image.network(e["imageUrl"]),
  //           SizedBox(
  //             height: 10,
  //           ),
  //           Text(
  //             e["title"],
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               fontSize: 20,
  //             ),
  //           ),
  //         ],
  //       ),
  //       decoration: BoxDecoration(
  //         border: Border.all(
  //           color: Color.fromRGBO(233, 233, 233, .9),
  //           width: 1,
  //         ),
  //       ),
  //     );
  //   }).toList();
  //   return list;
  // }

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          SizedBox(
            height: 10,
          ),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233, 233, 233, .9),
          width: 1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   // children: <Widget>[
    //   //   Text("this is str"),
    //   //   Text("this is str"),
    //   //   Text("this is str"),
    //   // ],

    //   crossAxisSpacing: 20,
    //   mainAxisSpacing: 20,
    //   padding: EdgeInsets.all(10),
    //   childAspectRatio: 0.7,
    //   children: _getListData(),
    // );

    return GridView.builder(
      itemCount: listData.length,
      itemBuilder: _getListData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
