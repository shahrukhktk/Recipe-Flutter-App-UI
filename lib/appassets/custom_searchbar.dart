import 'package:flutter/material.dart';
import 'package:recipe/appassets/app_assets.dart';
import 'package:recipe/mainscreen/searchpage.dart';

class SearchBarClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Find the best recipies...',
                ),
                onSubmitted: (String vehicle){},
              ),
            ),
            SizedBox(width: 10.0),
            GestureDetector(
              child: Icon(
                Icons.search,
                color: AppColors.accentcolor,
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}