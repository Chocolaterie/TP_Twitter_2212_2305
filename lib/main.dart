import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/twitter-page.dart';

void main() {
  runApp(const TpTwitterApp());
}

class TpTwitterApp extends StatelessWidget {
  const TpTwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TpTwitter",
      home: TwitterPage(),
    );
  }
}
