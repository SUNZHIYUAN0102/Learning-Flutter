import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  String title;
  FormPage({super.key, this.title = "Form Page"});

  @override
  State<FormPage> createState() => _FormPageState(title);
}

class _FormPageState extends State<FormPage> {
  String title;
  _FormPageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(children: [
        ListTile(
          title: Text("this is form page"),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
