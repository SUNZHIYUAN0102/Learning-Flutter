import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          child: Text("To login page"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/registerFirst");
          },
          child: Text("To register page"),
        )
      ],
    );
  }
}
