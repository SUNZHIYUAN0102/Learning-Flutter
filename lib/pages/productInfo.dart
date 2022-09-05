import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  Map arguments;
  ProductInfo({super.key, required this.arguments});

  @override
  State<ProductInfo> createState() => _ProductInfoState(arguments: arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;

  _ProductInfoState({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("pid: ${arguments["id"]}"),
    );
  }
}
