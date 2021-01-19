import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/MainScreens/HomePage.dart';
import 'package:recipe/MainScreens/SearchPage.dart';
import 'package:recipe/MainScreens/bottomnav.dart';

import 'Authentication/getstarted.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColors.themecolor,
    accentColor: AppColors.accentcolor,
    fontFamily: "Roboto",
  ),
  debugShowCheckedModeBanner: false,
  home: SearchPage(),
));