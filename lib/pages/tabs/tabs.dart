import 'package:flutter/material.dart';
import './home.dart';
import './category.dart';
import './setting.dart';

class Tabs extends StatefulWidget {
  int currentIndex;
  Tabs({super.key, this.currentIndex = 0});
  @override
  State<Tabs> createState() => _TabsState(currentIndex);
}

class _TabsState extends State<Tabs> {
  int currentIndex;
  _TabsState(this.currentIndex);

  List pageList = [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        fixedColor: Colors.red,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分类",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "设置",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: "我的",
          // ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
