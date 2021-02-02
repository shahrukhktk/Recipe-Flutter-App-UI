import 'package:flutter/material.dart';
import 'package:recipe/appassets/app_assets.dart';
import 'package:recipe/appassets/custom_cardlist.dart';
import 'package:recipe/mainscreen/selectedstore.dart';

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
            padding: const EdgeInsets.only(top: 20, right: 25, left: 25, bottom: 20,),
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

          //Stores List
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SelectedStoresScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Delivery and pickup available", mi: "1.3 mi",),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Delivery and pickup available", mi: "1.36 mi",),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Pickup only", mi: "1.34 mi",),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Delivery and pickup available", mi: "1.37 mi",),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: StoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Delivery and pickup available", mi: "1.37 mi",),
          ),



        ],
      ),
    );
  }
}
