

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextForgotPassword extends StatefulWidget{
  @override
  _TextForgotPasswordState createState() => new _TextForgotPasswordState();

}
class _TextForgotPasswordState extends State<TextForgotPassword>{
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: EdgeInsets.only(right: 30),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
              child:GestureDetector(

                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent[400]
                  ),
                ),
                onTap: (){

                },
              )
          ),
        )
    );
  }


}