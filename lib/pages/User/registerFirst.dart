import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册-输入手机号"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text("这是注册第一步，请输入手机号，然后点击下一步"),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, "/registerSecond");
              Navigator.of(context).pushReplacementNamed('/registerSecond');
            },
            child: Text("下一步"),
          ),
        ],
      )),
    );
  }
}
