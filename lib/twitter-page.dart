import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/footer.dart';
import 'package:tp_twitter_2212_2305/header.dart';
import 'package:tp_twitter_2212_2305/tweet-card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import 'package:tp_twitter_2212_2305/tweet.dart';

class TwitterPage extends StatefulWidget {
  @override
  State<TwitterPage> createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {

  /// Create progress dialog
  ProgressDialog? pd;

  // Liste vide de tweets
  var tweets = [];

  // Pour appeler l'api
  void callApi() async {
    // Affiche du design avant le traitement (ouvrir la boite de chargement)
    pd = ProgressDialog(context: context);
    pd!.show(
        msg: "Récupération des Tweets en cours ...",
        barrierColor: Color(0x77000000)
    );

    // Fake : 2 sec de latence
    await  Future.delayed(const Duration(seconds: 1));

    // Tu lance le traiement
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json"));

    // Tester si la requete est valide
    if (response.statusCode == 200) {

      // conversion : récupérer le json de la réponse
      var json = convert.jsonDecode(response.body);

      // Rafraichir la vue pendant qu'on met à jour la liste des tweets
      setState(() {
        // A partir de celle-ci convertir en objet Tweet
        tweets = json.map((data) => Tweet.fromJson(data)).toList();

        // Enlever la fenetre de chargement
        pd!.close();
      });
    }
  }

  void clearPage() {
    setState(() {
      tweets = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter"),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Header(),
          Expanded(
              child: Container(
                  child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: clearPage,
                      child: Text("Vider la page")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: callApi,
                      child: Text("Afficher la liste des Tweets")),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: tweets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TweetCard(tweets[index]);
                    }),
              ),
            ],
          ))),
          Footer(),
        ],
      ),
    );
  }
}
