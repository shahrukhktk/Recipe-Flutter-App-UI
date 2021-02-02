import 'package:flutter/material.dart';
import 'package:recipe/appassets/app_assets.dart';
import 'package:recipe/appassets/custom_searchbar.dart';
import 'package:recipe/mainscreen/searchpage.dart';
import 'package:recipe/mainscreen/selectedrecipe.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_home.png'), fit: BoxFit.fill,
          ),
        ),
        child: HomePageScreen(),
      ),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text('Home', style: TextStyle(
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

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchPage()),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBarClass(),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 5, left: 20),
                child: Center(
                  child: FlatButton(
                    height: 48,
                    minWidth: 135,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        side: BorderSide(color: AppColors.accentcolor)),
                    color: Colors.white,
                    textColor: AppColors.accentcolor,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => MainScreen()),); // It should navigate to Home Screen
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Events",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 20, left: 5),
                child: Center(
                  child: FlatButton(
                    height: 48,
                    minWidth: 135,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        side: BorderSide(color: AppColors.accentcolor)),
                    color: AppColors.accentcolor,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => MainScreen()),); // It should navigate to Home Screen
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recipes",
                        style: TextStyle(
                          fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: Text(
              "Trendings",
              style: TextStyle(
                fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
              ),
            ),
          ),

          GestureDetector(
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

          GestureDetector(
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

