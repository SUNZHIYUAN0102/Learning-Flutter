import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("这是一个登录页面, 点击登录按钮执行相关操作"),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("登录"),
          ),
        ],
      )),
    );
  }
}
