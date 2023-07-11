import 'package:flutter/material.dart';

class TwitterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Twitter"),),
      body: Flex(direction: Axis.vertical,
      children: [
        Text("Todo")
      ],),
    );
  }

}