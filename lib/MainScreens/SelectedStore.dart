import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/DropDownwidget.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_cardlist.dart';

class SelectedStoresScreen extends StatefulWidget {
  @override
  _SelectedStoresScreenState createState() => _SelectedStoresScreenState();
}

class _SelectedStoresScreenState extends State<SelectedStoresScreen> {
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
            padding: const EdgeInsets.all(20.0),
            child: Text('Store Selected', style: TextStyle(
                fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          //Stores List
          GestureDetector(
            onTap: ()
            {
              // Navigator.push(context,
              //   MaterialPageRoute(builder: (context) => SelectedStoreDetalis()),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectedStoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Change Store", mi: "1.3 mi",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Row(
              children: [
                Text('Store Selected', style: TextStyle(
                    fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.info_outline, color: Colors.black87,),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 80, top: 15, bottom: 15),
            child: ServicesDropdown(),
          ),






        ],
      ),
    );
  }
}
