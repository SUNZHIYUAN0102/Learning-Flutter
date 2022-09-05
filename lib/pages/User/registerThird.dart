import 'package:flutter/material.dart';
import '../tabs/tabs.dart';

class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({super.key});

  @override
  State<RegisterThirdPage> createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 50),
          Text("请输入密码完成注册"),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pop();

              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => Tabs(
                      currentIndex: 2,
                    ),
                  ),
                  (route) => route == null);
            },
            child: Text("完成注册"),
          ),
        ],
      )),
    );
  }
}
