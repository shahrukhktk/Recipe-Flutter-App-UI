import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_cardlist.dart';
import 'package:recipe/MainScreens/SelectedIngredientStoreScreen.dart';
import 'package:recipe/MainScreens/SelectedStore.dart';

class SelectStoreToOrderScreen extends StatefulWidget {
  @override
  _SelectStoreToOrderScreenState createState() => _SelectStoreToOrderScreenState();
}

class _SelectStoreToOrderScreenState extends State<SelectStoreToOrderScreen> {
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
            padding: const EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 20,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Available at the following stores near you.', style: TextStyle(
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

          //Stores List
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SelectedIngredientStoresScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StoreIngredientsDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", ingredients: "All ingredients available", deliveryaddress: "Delivery and pickup", mi: "1.3 mi",),
            ),
          ),

          GestureDetector(
            onTap: ()
            {

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StoreIngredientsDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", ingredients: "3 ingredients are unavailable", deliveryaddress: "Delivery and pickup", mi: "1.3 mi",),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectedStoresScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StoreIngredientsDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", ingredients: "All ingredients available", deliveryaddress: "Delivery and pickup", mi: "1.3 mi",),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectedStoresScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StoreIngredientsDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", ingredients: "All ingredients available", deliveryaddress: "Delivery and pickup", mi: "1.3 mi",),
            ),
          ),


        ],
      ),
    );
  }
}
