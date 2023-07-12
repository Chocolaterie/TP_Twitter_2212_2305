import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1ere ligne
        Container(
          height: 150,
          child: Row(
            children: [
              // Photo de profil
              SizedBox(
                  width: 150,
                  child: Image.network(
                      fit: BoxFit.fill,
                      "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=128")),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Chocolatine@gmail.com",
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "50s",
                              style: TextStyle(color: Color(0xFF888888)),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore")),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        //2eme ligne : les 3 boutons
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Répondre",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text("Retweet", style: TextStyle(fontWeight: FontWeight.w600)),
              Text("Favoris", style: TextStyle(fontWeight: FontWeight.w600))
            ],
          ),
        )
      ],
    );
  }
}
