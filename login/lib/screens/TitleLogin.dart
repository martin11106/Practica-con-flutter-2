

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TitleLogin extends StatefulWidget{
  @override
  _TitleState createState() => new _TitleState();

}
class _TitleState extends State<TitleLogin>{
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(20),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: 'Hello\n', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60)),
              TextSpan(
                  text: 'There',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60)),
              TextSpan(
                  text: '.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60,color: Colors.greenAccent[400])),
            ],
          ),
        ),
      );
  }


}