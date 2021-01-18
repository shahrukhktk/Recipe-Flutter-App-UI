import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_textfield.dart';
import 'package:recipe/MainScreens/bottomnav.dart';

class SignupScreen extends StatelessWidget {

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
        child: SignupEmailScreen(),
      ),
    );
  }
}

class SignupEmailScreen extends StatefulWidget {
  @override
  _SignupEmailScreenState createState() => _SignupEmailScreenState();
}

class _SignupEmailScreenState extends State<SignupEmailScreen> {

  bool rememberMe = false;

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

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10,),
            child: EmailTxt(text: 'Email', ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10,),
            child: UsernameTxt(text: 'Username', ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10,),
            child: PasswordTxt(text: 'Password', ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10,),
            child: PasswordTxt(text: 'Confirm Password', ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: rememberMe,
                    activeColor: AppColors.accentcolor,
                    onChanged:(bool newValue){
                      setState(() {
                        rememberMe = newValue;
                      });
                    }),
                Text('Agree to terms and conditions', style: TextStyle(
                    fontFamily: 'Roboto', color: AppColors.accentcolor, fontSize: 14, fontWeight: FontWeight.normal,
                  ),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
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
                    MaterialPageRoute(builder: (context) => HomeScreen()),); // It should navigate to Home Screen
                },
                child: Text(
                  "Sign up",
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
