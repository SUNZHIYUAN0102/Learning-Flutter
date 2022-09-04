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
    //   child: Container(
    //     width: 200,
    //     child: AspectRatio(
    //       aspectRatio: 2.0 / 1.0,
    //       child: Container(
    //         color: Colors.red,
    //       ),
    //     ),
    //   ),
    // );

    // return AspectRatio(
    //   aspectRatio: 2 / 1,
    //   child: Container(
    //     color: Colors.orange,
    //   ),
    // );

    // return ListView(
    //   children: [
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           ListTile(
    //             title: Text(
    //               "YuanYuan",
    //               style: TextStyle(
    //                 fontSize: 28,
    //               ),
    //             ),
    //             subtitle: Text("Programmer"),
    //           ),
    //           ListTile(
    //             title: Text("Phone: 89996193980"),
    //             subtitle: Text("Address: Xxxxxxxx"),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           ListTile(
    //             title: Text(
    //               "YuanYuan2",
    //               style: TextStyle(
    //                 fontSize: 28,
    //               ),
    //             ),
    //             subtitle: Text("Programmer"),
    //           ),
    //           ListTile(
    //             title: Text("Phone: 89996193980"),
    //             subtitle: Text("Address: Xxxxxxxx"),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           ListTile(
    //             title: Text(
    //               "YuanYuan3",
    //               style: TextStyle(
    //                 fontSize: 28,
    //               ),
    //             ),
    //             subtitle: Text("Programmer"),
    //           ),
    //           ListTile(
    //             title: Text("Phone: 89996193980"),
    //             subtitle: Text("Address: Xxxxxxxx"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    // return ListView(
    //   children: [
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //         children: [
    //           AspectRatio(
    //             aspectRatio: 16 / 9,
    //             child: Image.network(
    //               "https://picsum.photos/id/237/1600/900",
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           ListTile(
    //             // leading: ClipOval(
    //             //   child: Image.network("https://picsum.photos/id/239/200/200"),
    //             // ),
    //             leading: CircleAvatar(
    //               backgroundImage:
    //                   NetworkImage("https://picsum.photos/id/239/200/200"),
    //             ),
    //             title: Text("YuanYuanYuan"),
    //             subtitle: Text(
    //               "This is long long long long long long long long long long long story",
    //               style: TextStyle(overflow: TextOverflow.ellipsis),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                // leading: ClipOval(
                //   child: Image.network("https://picsum.photos/id/239/200/200"),
                // ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text("YuanYuanYuan"),
                subtitle: Text(
                  "This is long long long long long long long long long long long story",
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
