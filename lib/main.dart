import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'authenticationscreen/getstarted.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Roboto",
  ),
  debugShowCheckedModeBanner: false,
  home: MainAuthScreen(),
));