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
      backgroundColor: Colors.white,
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


        ],
      ),
    );
  }
}
