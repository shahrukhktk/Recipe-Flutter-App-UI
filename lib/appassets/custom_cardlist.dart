import 'package:flutter/material.dart';
import 'app_assets.dart';

class StoreDetails extends StatelessWidget {

  final String storename, subtitle, deliveryaddress, mi;

  const StoreDetails({Key key, this.storename, this.subtitle, this.deliveryaddress, this.mi}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store1 = Center(
      child: Stack(
        children: [
          Container(
            child: SizedBox(
              height: 150,
              width: 300,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              top: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text('$storename', style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),
                      ),

                      Expanded(
                          flex: 1,
                          child: Icon(Icons.room_rounded, color: AppColors.themecolor,)),

                      Expanded(
                        flex: 1,
                        child: Text('$mi', style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey
                        ),),
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('$subtitle', style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,),
                    child: Text('$deliveryaddress', style: TextStyle(
                        fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                    ),),
                  ),
                ],
              ))
        ],
      ),
    );

    return store1;
    }
}



class SelectedStoreDetails extends StatelessWidget {

  final String storename, subtitle, deliveryaddress, mi;

  const SelectedStoreDetails({Key key, this.storename, this.subtitle, this.deliveryaddress, this.mi}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store1 = Center(
      child: Stack(
        children: [
          Container(
            child: SizedBox(
              height: 150,
              width: 300,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              top: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text('$storename', style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),
                      ),

                      Expanded(
                          flex: 1,
                          child: Icon(Icons.room_rounded, color: AppColors.themecolor,)),

                      Expanded(
                        flex: 1,
                        child: Text('$mi', style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey
                        ),),
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('$subtitle', style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,),
                    child: Center(
                      child: Text('$deliveryaddress', style: TextStyle(
                          fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.accentcolor, decoration: TextDecoration.underline
                      ),),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );

    return store1;
  }
}

class StoreIngredientsDetails extends StatelessWidget {

  final String storename, subtitle, ingredients, deliveryaddress, mi;

  const StoreIngredientsDetails({Key key, this.storename, this.subtitle,this.ingredients, this.deliveryaddress, this.mi}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store1 = Center(
      child: Stack(
        children: [
          Container(
            child: SizedBox(
              height: 180,
              width: 300,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              top: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text('$storename', style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),
                      ),

                      Expanded(
                          flex: 1,
                          child: Icon(Icons.room_rounded, color: AppColors.themecolor,)),

                      Expanded(
                        flex: 1,
                        child: Text('$mi', style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey
                        ),),
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('$subtitle', style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,),
                    child: Text('$ingredients', style: TextStyle(
                        fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,),
                    child: Text('$deliveryaddress', style: TextStyle(
                        fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.themecolor
                    ),),
                  ),

                ],
              ))
        ],
      ),
    );

    return store1;
  }
}

class SelectedIngredientStoreDetails extends StatelessWidget {

  final String storename, subtitle, deliveryaddress, mi;

  const SelectedIngredientStoreDetails({Key key, this.storename, this.subtitle, this.deliveryaddress, this.mi}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final store1 = Center(
      child: Stack(
        children: [
          Container(
            child: SizedBox(
              height: 160,
              width: 300,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              top: 20,
              right: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text('$storename', style: TextStyle(
                            fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.black
                        ),),
                      ),

                      Expanded(
                          flex: 1,
                          child: Icon(Icons.room_rounded, color: AppColors.themecolor,)),

                      Expanded(
                        flex: 1,
                        child: Text('$mi', style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: Colors.grey
                        ),),
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('$subtitle', style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.grey
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,),
                    child: Row(
                      children: [
                        Icon(Icons.check_box_outlined, color: AppColors.accentcolor,),
                        Text('$deliveryaddress', style: TextStyle(
                            fontSize: 15.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400, color: AppColors.accentcolor, decoration: TextDecoration.underline
                        ),),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );

    return store1;
  }
}
