import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final arguments;

  const SearchPage({super.key, this.arguments});

  @override
  State<SearchPage> createState() => _SearchPageState(arguments: arguments);
}

class _SearchPageState extends State<SearchPage> {
  var arguments;
  _SearchPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "This is search page ${arguments != null ? arguments["id"] : 0}"),
      ),
      body: Text("Content"),
    );
  }
}
