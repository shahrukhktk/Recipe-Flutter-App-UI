import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/Authentication/signup.dart';
import 'package:recipe/Authentication/signupoptionscreen.dart';

class StoresScreen extends StatefulWidget {
  @override
  _StoresScreenState createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
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
                Text('Available at the following stores.', style: TextStyle(
                    fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Select store to order.', style: TextStyle(
                      fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                  ),),
                ),
              ],
            ),
          ),

          Stack(
            children: [

              Card(
                elevation: 2,
                child: Column(
                  children: [

                    Row(
                      children: [
                        Text('Store Name', style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),

                        Icon(Icons.room_rounded, color: AppColors.themecolor,),
                        Text('1.3 mi', style: TextStyle(
                            fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),

                      ],
                    ),



                  ],
                ),
              ),
              Positioned(top: 20, left: 20, right: 20, bottom: 20,)
            ],
          ),


        ],
      ),
    );
  }
}
