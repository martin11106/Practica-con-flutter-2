

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextRegister extends StatefulWidget{
  @override
  _TextRegisterState createState() => new _TextRegisterState();

}
class _TextRegisterState extends State<TextRegister>{
  @override
  Widget build(BuildContext context) {
    return    Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black), /*defining default style is optional */
          children: <TextSpan>[
            TextSpan(
                text: 'New to Spotify? '),
            TextSpan(
                text: 'Register',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.greenAccent[400])),

          ],
        ),
      ),
    );
  }


}