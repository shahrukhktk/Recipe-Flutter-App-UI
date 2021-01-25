import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/DropDownwidget.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_cardlist.dart';
import 'package:recipe/MainScreens/HomePage.dart';
import 'package:recipe/MainScreens/SelectStoreToOrder.dart';

class OrderPlacedScreen extends StatefulWidget {
  @override
  _OrderPlacedScreenState createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {

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
            padding: const EdgeInsets.only(top: 40, bottom: 20.0),
            child: Center(
              child: Text("Order Placed", style: TextStyle(
                fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Icon(Icons.check_circle_outline, color: AppColors.themecolor, size: 80,)),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20.0),
            child: Center(
              child: Text("Your order will be on it's way soon!", style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: Image(image: AssetImage('images/image.png'),)),
          ),

          //Order Now Btn
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 5, bottom: 10),
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
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()),);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Thank You",
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
    );
  }
}
