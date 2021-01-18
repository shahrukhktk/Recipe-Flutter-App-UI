import 'package:flutter/material.dart';
import 'app_assets.dart';

class EmailTxt extends StatelessWidget {

  final String text;
  EmailTxt({this.text});

  @override
  Widget build(BuildContext context) {

    final emailTxtFld = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.alternate_email, color: AppColors.themecolor,),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return emailTxtFld;
  }
}

class UsernameTxt extends StatelessWidget {

  final String text;
  UsernameTxt({this.text});

  @override
  Widget build(BuildContext context) {

    final usernameTxtfld = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.person_outline, color: AppColors.themecolor,),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return usernameTxtfld;
  }
}

class PasswordTxt extends StatelessWidget {

  final String text;

  PasswordTxt({this.text});

  @override
  Widget build(BuildContext context) {
    final password = TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.lock_open, color: AppColors.themecolor,),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return password;
  }
}
