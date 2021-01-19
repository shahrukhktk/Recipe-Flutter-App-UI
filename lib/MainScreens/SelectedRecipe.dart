import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/Authentication/signup.dart';
import 'package:recipe/Authentication/signupoptionscreen.dart';

class SelectedRecipeScreen extends StatefulWidget {
  @override
  _SelectedRecipeScreenState createState() => _SelectedRecipeScreenState();
}

class _SelectedRecipeScreenState extends State<SelectedRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitelight,
      appBar: AppBar(
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
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Grilled Chicken', style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('By John Doe', style: TextStyle(
                      fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                  ),),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              child: Image(
                image: NetworkImage('https://images.pexels.com/photos/106343/pexels-photo-106343.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Text('Upcoming class', style: TextStyle(
                fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(Icons.calendar_today_outlined, color: AppColors.themecolor,)),
                Expanded(
                  flex: 4,
                  child: Text('Wed September 12', style: TextStyle(
                      fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                  ),),
                ),

                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpOptionPage()),); //It should navigate to forgot password screen
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Register', style: TextStyle(
                            fontFamily: 'Roboto', color: AppColors.accentcolor, fontSize: 16, fontWeight: FontWeight.w500, decoration: TextDecoration.underline
                        ),),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward, color: AppColors.accentcolor,),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('View all events', style: TextStyle(
                  fontFamily: 'Roboto', color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500, decoration: TextDecoration.underline
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Cook Time",
                    style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Text(
                    "Level",
                    style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.black
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Text(
                    "Intermediate",
                    style: TextStyle(
                        fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.normal, color: Colors.grey
                    ),
                  ),
                ),

              ],
            ),
          ),

          //Order Food Btn
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 5),
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
                    "Order food",
                    style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Preparation', style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Summary. Lorem ipsum dolor sit amet, consectetur adipisjflsa, edit leorem dolor sit amet, consectetur adipisjflsa, edit leorem', style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey, height: 1.2
                  ),),
                ),
              ],
            ),
          ),

          //Ingredients
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ingredients', style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Stack(
                    children: [
                      Center(
                        child: Card(
                          child: Container(
                            height: 180,
                            width: 330,
                          ),
                          elevation: 2.0,
                          shadowColor: Colors.black12,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: 25, bottom: 20, right:25, top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Text('Ingredient One', style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                ),),

                                Text('Ingredient Two', style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                ),),

                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Text('Ingredient Three', style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                  ),),

                                  Text('Ingredient Four', style: TextStyle(
                                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                  ),),

                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Text('Ingredient Five', style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                ),),

                                Text('Ingredient Six', style: TextStyle(
                                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                                ),),

                              ],
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

          //Buy Ingrediants Btn
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 5),
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
                    "Buy Ingredients",
                    style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Direction', style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('1. Lorem ipsum dolor sit amet, consectetur adipiscine elit. \n2. Lorem ipsum dolor sit amet, consectetur adipiscine elit. \n3. Lorem ipsum dolor sit amet, consectetur adipiscine elit. \n4. Lorem ipsum dolor sit amet, consectetur adipiscine elit.', style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey, height: 1.5
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscine elit. Lorem ipsum dolor sit amet, consectetur adipiscine elit. consectetur adipiscine elit. Lorem ipsum dolor sit amet, consectetur adipiscine elit.', style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey, height: 1.2
                  ),
                  textAlign: TextAlign.left,),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30),
            child: Center(child: Image(image: AssetImage('images/enjoy_logo.png'),)),
          ),

        ],
      ),
    );
  }
}
