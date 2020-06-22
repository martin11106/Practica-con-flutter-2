import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormLogin extends StatefulWidget{
  final GlobalKey<FormState> _formkey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  FormLogin( this._formkey, this.emailController, this.passwordController);


  @override
  _FormLoginState createState() => new _FormLoginState(this._formkey,this.emailController,this.passwordController);

}
class _FormLoginState extends State<FormLogin>{
  final GlobalKey<FormState> _formkey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  _FormLoginState(this._formkey, this.emailController, this.passwordController);
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: this._formkey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 15),
            child: TextFormField(
              controller: this.emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value){
                if(value.isEmpty){
                  return "Email no puede ir vacio";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15,left: 30,right: 30,bottom: 30),
            child: TextFormField(
              controller: this.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              validator: (value){
                if(value.isEmpty){
                  return "Password no puede ir vacio";
                }
                return null;
              },
            ),
          ),

        ],

      ),

    );
  }


}