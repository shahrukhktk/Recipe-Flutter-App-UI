import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';
import 'package:recipe/AppAssets/custom_cardlist.dart';
import 'package:recipe/AppAssets/custom_listtile.dart';
import 'orderplacedscreen.dart';

class SelectedIngredientStoresScreen extends StatefulWidget {

  final int initNumber;
  final Function(int) counterCallback;
  final Function increaseCallback;
  final Function decreaseCallback;
  SelectedIngredientStoresScreen({this.initNumber, this.counterCallback, this.increaseCallback, this.decreaseCallback});

  @override
  _SelectedIngredientStoresScreenState createState() => _SelectedIngredientStoresScreenState();
}

class _SelectedIngredientStoresScreenState extends State<SelectedIngredientStoresScreen> {

  int _currentCount;
  Function _counterCallback;
  Function _increaseCallback;
  Function _decreaseCallback;

  @override
  void initState() {
    _currentCount = widget.initNumber ?? 1;
    _counterCallback = widget.counterCallback ?? (int number) {};
    _increaseCallback = widget.increaseCallback ?? () {};
    _decreaseCallback = widget.decreaseCallback ?? () {};
    super.initState();
  }

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
              child: SelectedIngredientStoreDetails(storename: "Store Name", subtitle: "123 Abc Drive, \nLetter, MD, 21234", deliveryaddress: "Delivery", mi: "1.3 mi",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Text('Selected Ingredients', style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text('Servings', style: TextStyle(
                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

                Text('Total Price', style: TextStyle(
                    fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                //Counter
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _createIncrementDicrementButton(Icons.remove, () => _dicrement()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_currentCount.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _createIncrementDicrementButton(Icons.add, () => _increment()),
                    ),
                  ],
                ),

                Text("\$$dollars", style: TextStyle(
                    fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
                ),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Text('Ingredients', style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
            child: Text('3 ingredients are unavailable', style: TextStyle(
                fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.red
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(Icons.add_circle_outline_sharp, color: AppColors.accentcolor,),

                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Add all', style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: AppColors.accentcolor
                  ),),
                ),

              ],
            ),
          ),

          Divider(color: Colors.grey, thickness: 1,),

          //Ingredient List Items
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: IngredientsList(title: "Ingredient One / Item Name", subtitle: "\$5.99",),
          ),

          Divider(color: Colors.grey, thickness: 1,),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: IngredientsList(title: "Ingredient Two / Item Name", subtitle: "\$5.99",),
          ),

          Divider(color: Colors.grey, thickness: 1,),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: IngredientsList(title: "Ingredient Three / Item Name", subtitle: "\$5.99",),
          ),

          Divider(color: Colors.grey, thickness: 1,),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
            child: IngredientsList(title: "Ingredient Four / Item Name", subtitle: "\$5.99",),
          ),

          Divider(color: Colors.grey, thickness: 1,),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Text('Address', style: TextStyle(
                fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
            child: Text('Address Selected', style: TextStyle(
                fontSize: 16.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.black
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

  void _increment() {
    setState(() {
      _currentCount++;
      _counterCallback(_currentCount);
      _increaseCallback();
    });
  }

  void _dicrement() {
    setState(() {
      if (_currentCount > 1) {
        _currentCount--;
        _counterCallback(_currentCount);
        _decreaseCallback();
      }
    });
  }

  Widget _createIncrementDicrementButton(IconData icon, Function onPressed) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(minWidth: 35.0, minHeight: 35.0),
      onPressed: onPressed,
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(
        icon,
        color: Colors.black,
        size: 15.0,
      ),
      shape: BeveledRectangleBorder(),
    );
  }


}



