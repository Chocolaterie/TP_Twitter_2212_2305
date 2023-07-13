import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/login-form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10),
        child: LoginForm(),
      )),
    );
  }
}
