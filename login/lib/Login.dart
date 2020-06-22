import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/Api.dart';
import 'package:http/http.dart' as http;
import 'package:login/screens/TextRegister.dart';
import 'package:login/screens/TitleLogin.dart';
import 'package:login/screens/FormLogin.dart';
import 'package:login/screens/TextForgotPassword.dart';
class Login extends StatefulWidget{
    @override
    _LoginState createState() => new _LoginState();

}
class _LoginState extends State<Login>{
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message='';
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 95,),
                TitleLogin(),
                Container(
                  child:FormLogin(_formKey,emailController,passwordController),
                ),
              TextForgotPassword(),
                SizedBox(height: 40,),
                Padding(
                    padding: EdgeInsets.only(right: 30,left: 30),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed:  ()async {
                            if(_formKey.currentState.validate()){
                              var email = emailController.text;
                              var password = passwordController.text;
                              setState(() {
                                var message = " espere por favor";
                              });
                              message= email;
                              var rsp = await loginUser(email,password);
                              print(rsp);
                              if(rsp.containsKey('email')){
                                if(rsp['email']=="david@hotmail.com"){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: Text("flutter"),
                                      ),
                                    );
                                  }));
                                }
                              }
                            }
                          },
                          color: Colors.greenAccent[400],
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),

                          padding: const EdgeInsets.all(0.0),

                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text("LOGIN"),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 70),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(width: 3.0,color: Colors.black)
                          ),
                          padding: const EdgeInsets.all(0.0),

                          child: Container(
                            height: 50,
                            child: Center(

                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.black), /*defining default style is optional */
                                  children: [
                                    WidgetSpan(
                                      child: FaIcon(FontAwesomeIcons.facebookF, size: 22),
                                    ),
                                    TextSpan(
                                        text: '  Log in with Facebook',
                                        style: TextStyle( fontWeight: FontWeight.bold,color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 70),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),

                          ),

                        ),
                        SizedBox(height: 20,),

                      TextRegister()
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      );
  }

}