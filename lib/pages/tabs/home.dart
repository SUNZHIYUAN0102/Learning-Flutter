import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/search", arguments: {"id": 666});
            // Navigator.of(context).pushNamed("/search", arguments: {"id": 789});
          },
          child: Text("To search page"),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/product");
          },
          child: Text("To product page"),
        ),
      ],
    );
  }
}
