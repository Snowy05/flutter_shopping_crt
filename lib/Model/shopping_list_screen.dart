import 'package:flutter/material.dart';

import '../Widgets/fav_item_screen.dart';
import 'item_list.dart';
import 'shopping_items_model.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final List<theItem> myShoppingList =[
    theItem(itemName: "Bread", itemCost: 4.50, itemDept: Departments.bakery, datePurchased: DateTime.now()),
    theItem(itemName: "Milk", itemCost: 2.90, itemDept: Departments.dairy, datePurchased: DateTime.now()),
    theItem(itemName: "Beef Joint", itemCost: 34.50, itemDept: Departments.meat, datePurchased: DateTime.now()),
    theItem(itemName: "Wash Up Liquid", itemCost: 1.50, itemDept: Departments.household, datePurchased: DateTime.now()),
    theItem(itemName: "Yoghurt", itemCost: 0.80, itemDept: Departments.dairy, datePurchased: DateTime.now()),
    theItem(itemName: "Chocolate Cake", itemCost: 3.20, itemDept: Departments.bakery, datePurchased: DateTime.now()),
    theItem(itemName: "Sweets", itemCost: 0.75, itemDept: Departments.confectionary, datePurchased: DateTime.now()),
    theItem(itemName: "Green Pepper", itemCost: 1.33, itemDept: Departments.fruit_veg, datePurchased: DateTime.now()),
    theItem(itemName: "Apples", itemCost: 3.45, itemDept: Departments.fruit_veg, datePurchased: DateTime.now()),
    theItem(itemName: "Bin Liners", itemCost: 2.50, itemDept: Departments.household, datePurchased: DateTime.now()),
    theItem(itemName: "Pork Chops", itemCost: 6.50, itemDept: Departments.meat, datePurchased: DateTime.now()),
    theItem(itemName: "Doughnuts", itemCost: 1.30, itemDept: Departments.confectionary, datePurchased: DateTime.now()),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Shopping Items'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (ctx) => FavItemScreen()));
          }, icon: Icon(Icons.favorite)),
        ],
      ),
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: ItemsList(shoppingList: myShoppingList,))
            ],
          )
      ),
    );
  }


}