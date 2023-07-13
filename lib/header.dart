import 'package:flutter/material.dart';

// Constante pour eviter d'avoir le style redondant
const headerTextStyle = TextStyle(color: Colors.white);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF58B0F0),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Image.asset("images/pencil.png"),
              )),
              Expanded(
                  child: Text(
                "Accueil",
                style: headerTextStyle,
                textAlign: TextAlign.center,
              )),
              Expanded(
                  child: IconButton(
                onPressed: () {},
                icon: Image.asset("images/search.png"),
              )),
            ],
          ),
        ));
  }
}
