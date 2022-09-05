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
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int num = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Chip(
//           label: Text("Current Count: $num"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             setState(() { //只有有状态组件有
//               num++;
//             });
//           },
//           child: Text("Click"),
//         )
//       ],
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
            children: list.map(
          (value) {
            return ListTile(
              title: Text(value),
            );
          },
        ).toList()),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              list.add("new str 1");
              list.add("new str 2");
            });
          },
          child: Text("Add one"),
        )
      ],
    );
  }
}
