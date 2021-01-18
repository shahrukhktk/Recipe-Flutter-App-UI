import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_textfield.dart';
import 'package:recipe/MainScreens/bottomnav.dart';

class SignUpOptionPage extends StatelessWidget {

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
        child: SignUpOptionScreen(),
      ),
    );
  }
}

class SignUpOptionScreen extends StatefulWidget {
  @override
  _SignUpOptionScreenState createState() => _SignUpOptionScreenState();
}

class _SignUpOptionScreenState extends State<SignUpOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [

          SizedBox(height: 180,),

          Center(
            child: Text('Sign Up', style: TextStyle(
              fontFamily: 'Roboto', color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
            ),),
          ),

          //button sign up with email
          Padding(
            padding: const EdgeInsets.only(top: 100.0, right: 20, left: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                minWidth: 250,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: BorderSide(color: AppColors.accentcolor)),
                color: AppColors.accentcolor,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),); // It should navigate to Home Screen
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email_outlined,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sign Up with Email",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //button sign up with facebook
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                minWidth: 250,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: BorderSide(color: AppColors.accentcolor)),
                color: Colors.transparent,
                textColor: AppColors.accentcolor,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),); // It should navigate to Home Screen
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('images/fb_ic.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sign Up with Facebook",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //button sign up with google
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                minWidth: 250,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                    side: BorderSide(color: AppColors.accentcolor)),
                color: Colors.transparent,
                textColor: AppColors.accentcolor,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),); // It should navigate to Home Screen
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('images/google_ic.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sign Up with Google",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
