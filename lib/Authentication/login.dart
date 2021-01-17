import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background2.png'), fit: BoxFit.fill,
          ),
        ),
        child: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [

          SizedBox(height: 180,),

          Center(
            child: Text('Login', style: TextStyle(
              fontFamily: 'Roboto', color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10,),
            child: EmailTxt(text: 'Email', ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10,),
            child: PasswordTxt(text: 'Password', ),
          ),

        ],
      ),
    );
  }
}
