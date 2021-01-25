import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/DropDownwidget.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_searchbar.dart';
import 'SelectedRecipe.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageScreenState createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPage> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Search', style: TextStyle(
          fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black
      ),),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://images.pexels.com/photos/1152994/pexels-photo-1152994.jpeg?cs=srgb&dl=pexels-myicahel-tamburini-1152994.jpg&fm=jpg'),
          ),
        )
      ],
      backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarClass(),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: Text(
              "Filter by",
              style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black54
              ),
            ),
          ),

          Divider(
            color: Colors.black38,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Cook Time",
                        style: TextStyle(
                            fontSize: 17.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                        ),
                      ),

                      DropDownClass(),

                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Level",
                        style: TextStyle(
                            fontSize: 17.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                        ),
                      ),

                      DropDownClass(),

                    ],
                  ),
                ),

              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order available",
                  style: TextStyle(
                      fontSize: 17.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                  ),
                ),

                Switch(
                  value: isSwitched,
                  onChanged: (value){
                    setState(() {
                      isSwitched=value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: AppColors.accentcolor,
                  activeColor: Colors.white,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OFF",
                      style: TextStyle(
                          fontSize: 12.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "ON",
                        style: TextStyle(
                            fontSize: 12.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),

          Divider(
            color: Colors.black38,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Stack(
                children: [
                  Image(image: AssetImage('images/recipe_image.png')),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recipie Title', style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('1hr 30min | by John Doe', style: TextStyle(
                              fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                            ),),
                          ),
                    ],
                  ))
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              //Navigate to selected recipe
            },
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectedRecipeScreen()),);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Stack(
                    children: [
                      Image(image: AssetImage('images/recipe_image.png')),
                      Positioned(
                          bottom: 20,
                          left: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Recipie Title', style: TextStyle(
                                  fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text('1hr 30min | by John Doe', style: TextStyle(
                                    fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                                ),),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Stack(
                children: [
                  Image(image: AssetImage('images/recipe_image.png')),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recipie Title', style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('1hr 30min | by John Doe', style: TextStyle(
                                fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                            ),),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Stack(
                children: [
                  Image(image: AssetImage('images/recipe_image.png')),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recipie Title', style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('1hr 30min | by John Doe', style: TextStyle(
                                fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                            ),),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Stack(
                children: [
                  Image(image: AssetImage('images/recipe_image.png')),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Recipie Title', style: TextStyle(
                              fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.white
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('1hr 30min | by John Doe', style: TextStyle(
                                fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                            ),),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}

