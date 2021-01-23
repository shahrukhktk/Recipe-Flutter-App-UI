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
