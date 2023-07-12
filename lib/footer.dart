import 'package:flutter/material.dart';

const footerTextStyle = TextStyle(color: Colors.black54);

class FooterButton extends StatelessWidget {

  String label;
  bool active = false;

  FooterButton(this.label, {this.active=false});

  TextStyle getStyle(){
    if (this.active){
      return TextStyle(color: Color(0xFF58B0F0));
    }
    return footerTextStyle;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
            Text(this.label, style: getStyle(), textAlign: TextAlign.center));
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            FooterButton("Fil", active: true,),
            FooterButton("Notification"),
            FooterButton("Messages"),
            FooterButton("Moi"),
          ],
        ),
      ),
    );
  }
}
