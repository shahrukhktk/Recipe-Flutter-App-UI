import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/Authentication/getstarted.dart';
import 'MainScreens/SelectedRecipe.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Roboto",
  ),
  debugShowCheckedModeBanner: false,
  home: MainAuthScreen(),
));