import 'package:flutter/material.dart';
import 'package:tp_twitter_2212_2305/tweet.dart';

class TweetCard extends StatelessWidget {

  Tweet tweet;

  TweetCard(this.tweet);

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
                              tweet.author,
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
                          child: Text(tweet.message)),
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
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/reply.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/retweet.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/favorite.png"),
              )
            ],
          ),
        )
      ],
    );
  }
}
