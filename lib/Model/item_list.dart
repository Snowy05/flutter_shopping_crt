import 'package:flutter/material.dart';
import 'package:flutter_shopping_crt/Widgets/shopping_item_screen.dart';
import 'package:flutter_shopping_crt/Model/shopping_items_model.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key, required this.shoppingList}) : super(key: key);

  final List<theItem> shoppingList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:shoppingList.length,
      itemBuilder: (context, index)=>
          ShoppingItemScreen(item:shoppingList[index],),);

  }
}