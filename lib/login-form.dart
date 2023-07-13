import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/twitter-validator.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  var formKey = GlobalKey<FormState>();

  /// Enclenher le contrôle de surface du formulaire
  void onSubmit(){

    if (formKey.currentState!.validate()){
      log('Connexion avec succès');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
        child: Flex(
      direction: Axis.vertical,
      children: [
        Text("Connexion à Twitter", textAlign: TextAlign.center, style: TextStyle(color: Colors.black54),),
        TextFormField(
          validator: TwitterValidator.validateEmail,
          decoration: InputDecoration(labelText: "Identifiant"),
        ),
        TextFormField(
          validator: TwitterValidator.validatePassword,
          obscureText: true,
          decoration: InputDecoration(labelText: "Mot de passe"),
        ),
        Row(
          children: [
            Switch(value: false, onChanged: (value) {}),
            Text("Mémoriser mes informations", style: TextStyle(color: Colors.black54))
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onSubmit,
            child: Text("Connexion"),
          ),
        )
      ],
    ));
  }
}
