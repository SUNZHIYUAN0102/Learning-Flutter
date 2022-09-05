import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({super.key});

  @override
  State<RegisterSecondPage> createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-输入验证码"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 50),
          Text("请输入验证码"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/registerThird");
            },
            child: Text("下一步"),
          ),
        ],
      )),
    );
  }
}
