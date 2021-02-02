import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/authenticationscreen/login.dart';
import 'package:recipe/authenticationscreen/signupoptionscreen.dart';

class MainAuthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'), fit: BoxFit.fill,
          ),
        ),
        child: GetStartedScreen(),
      ),
    );
  }
}

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [

          Image(
            image: AssetImage('images/logo.png'),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 120.0, right: 20, left: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: AppColors.accentcolor)),
                color: AppColors.accentcolor,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),);
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto'
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 50, right: 20, left: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                  minWidth: 150,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: AppColors.accentcolor)),
                  color: Colors.transparent,
                  textColor: AppColors.accentcolor,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpOptionPage()),);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto'
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
