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

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Padding(
//     //   padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//     //   child: GridView.count(
//     //     crossAxisCount: 2,
//     //     children: <Widget>[
//     //       Padding(
//     //         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//     //         child: Image.network(
//     //           "https://picsum.photos/id/237/200/200",
//     //           fit: BoxFit.cover,
//     //         ),
//     //       ),
//     //       Padding(
//     //         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//     //         child: Image.network(
//     //           "https://picsum.photos/id/238/200/200",
//     //           fit: BoxFit.cover,
//     //         ),
//     //       ),
//     //       Padding(
//     //         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//     //         child: Image.network(
//     //           "https://picsum.photos/id/239/200/200",
//     //           fit: BoxFit.cover,
//     //         ),
//     //       ),
//     //       Padding(
//     //         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//     //         child: Image.network(
//     //           "https://picsum.photos/id/240/200/200",
//     //           fit: BoxFit.cover,
//     //         ),
//     //       ),
//     //       Padding(
//     //         padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//     //         child: Image.network(
//     //           "https://picsum.photos/id/241/200/200",
//     //           fit: BoxFit.cover,
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // );

//     return IconContainer(
//       Icons.home,
//       color: Colors.orange,
//     );
//   }
// }

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //   width: 500,
//     //   height: 500,
//     //   color: Colors.red,
//     //   child: Column(
//     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //     crossAxisAlignment: CrossAxisAlignment.start,
//     //     children: [
//     //       IconContainer(
//     //         Icons.home,
//     //         color: Colors.pink,
//     //       ),
//     //       IconContainer(
//     //         Icons.search,
//     //         color: Colors.orange,
//     //       ),
//     //       IconContainer(
//     //         Icons.timelapse,
//     //         color: Colors.yellow,
//     //       )
//     //     ],
//     //   ),
//     // );

//     return Row(
//       children: [
//         IconContainer(
//           Icons.home,
//           color: Colors.pink,
//         ),
//         Expanded(
//           child: IconContainer(
//             Icons.search,
//             color: Colors.orange,
//           ),
//           flex: 2,
//         ),
//       ],
//     );
//   }
// }

// class IconContainer extends StatelessWidget {
//   double size;
//   Color color;
//   IconData icon;
//   IconContainer(this.icon, {this.size = 32, this.color = Colors.red});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       color: this.color,
//       child: Center(
//         child: Icon(
//           this.icon,
//           size: this.size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.black,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child: Text(
            "Hello, Flutter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 180,
                  child: Image.network(
                    "https://picsum.photos/id/237/400/200",
                    fit: BoxFit.cover,
                  ),
                ),
                flex: 2,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    height: 180,
                    child: ListView(
                      children: [
                        Container(
                          height: 85,
                          child: Image.network(
                            "https://picsum.photos/id/238/400/200",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 85,
                          child: Image.network(
                            "https://picsum.photos/id/239/400/200",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
                flex: 1,
              )
            ],
          ),
        ),
      ],
    );
  }
}
