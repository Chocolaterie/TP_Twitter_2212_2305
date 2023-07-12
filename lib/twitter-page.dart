import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/footer.dart';
import 'package:tp_twitter_2212_2305/header.dart';
import 'package:tp_twitter_2212_2305/tweet-card.dart';

class TwitterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Twitter"),),
      body: Flex(direction: Axis.vertical,
      children: [
        Header(),
        Expanded(child: Container(
            child:TweetCard())),
        Footer(),
      ],),
    );
  }

}