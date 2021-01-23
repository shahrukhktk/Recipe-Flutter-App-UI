import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/DropDownwidget.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_cardlist.dart';

import 'OrderPlacedScreen.dart';

class SelectedStoresScreen extends StatefulWidget {
  @override
  _SelectedStoresScreenState createState() => _SelectedStoresScreenState();
}

class _SelectedStoresScreenState extends State<SelectedStoresScreen> {

  double dollars = 15.65;

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

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20,),
            child: Text("\$$dollars", style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20,),
            child: Text("Price", style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
            child: Row(
              children: [
                Text('Address', style: TextStyle(
                    fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.info_outline, color: Colors.black87,),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20,),
            child: Text("Address selected", style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: Center(
              child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        height: 130,
                        width: 300,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                    ),
                    Positioned(
                        bottom: 10, left: 10, top: 10, right: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Icon(Icons.check_box_rounded, color: AppColors.themecolor,),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text('123 Abd Drive, \nLetter, MD, 21234', style: TextStyle(
                                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                                    ),),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 15.0,),
                              child: Center(
                                child: Text('use a different address', style: TextStyle(
                                    fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.accentcolor, decoration: TextDecoration.underline
                                ),),
                              ),
                            ),
                          ],
                        ),),
                  ],),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20,),
            child: Text("Payment", style: TextStyle(
                fontSize: 25.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20,),
            child: Text("Payment selected", style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    child: SizedBox(
                      height: 130,
                      width: 300,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                  ),
                  Positioned(
                    bottom: 10, left: 10, top: 10, right: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Icon(Icons.check_box_rounded, color: AppColors.themecolor,),

                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("Sally's card, \n23456", style: TextStyle(
                                    fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                                ),),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15.0,),
                          child: Center(
                            child: Text('use a different payment', style: TextStyle(
                                fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.accentcolor, decoration: TextDecoration.underline
                            ),),
                          ),
                        ),
                      ],
                    ),),
                ],),
            ),
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
                    MaterialPageRoute(builder: (context) => OrderPlacedScreen()),);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 40),
            child: Center(
              child: GestureDetector(
                onTap: ()
                {
                  // Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => Saveforlater()),); //It should navigate to forgot password screen
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.favorite_border, color: AppColors.accentcolor,),

                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Save for later', style: TextStyle(
                          fontFamily: 'Roboto', color: AppColors.accentcolor, fontSize: 16, fontWeight: FontWeight.w500, decoration: TextDecoration.underline
                      ),),
                    ),


                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
