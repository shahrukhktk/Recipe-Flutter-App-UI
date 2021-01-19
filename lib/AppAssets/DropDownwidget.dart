import 'package:flutter/material.dart';
import 'package:recipe/AppAssets/app_assets.dart';

class Item
{
  const Item(this.recipename);
  final String recipename;
//  final Icon icon;
}

class DropDownClass extends StatefulWidget {
  @override
  _DropDownClassState createState() => _DropDownClassState();
}

class _DropDownClassState extends State<DropDownClass> {
  @override
  Widget build(BuildContext context) {

    var selected_recipe;

    List<Item> recipes = <Item>[
      const Item('Recipe 1'),
      const Item('Recipe 2'),
      const Item('Recipe 3'),
      const Item('Recipe 4'),
      const Item('Recipe 5'),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        color: Colors.white,
      ),
      child: DropdownButton<Item>(
        hint:  Text("\t\t All \t\t\t\t", style: TextStyle(
          fontFamily: 'Roboto',
          color: AppColors.accentcolor,
        ),
        ),
        value: selected_recipe,
        onChanged: (Item Value) {
          setState(() {
            selected_recipe = Value;
          });
        },
        items: recipes.map((Item recipe) {
          return  DropdownMenuItem<Item>(
            value: recipe,
            child: Row(
              children: <Widget>[
                Text(
                  recipe.recipename,
                  style:  TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}