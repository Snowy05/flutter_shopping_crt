import 'package:flutter/material.dart';
import 'package:flutter_shopping_crt/Model/shopping_items_model.dart';

class FavItemNotifier extends ChangeNotifier{

  final List<theItem> _myFavItemsList = [];

  List<theItem> get getMyFavItemsList{
    return _myFavItemsList;
  }

  void addFavItemToList(theItem favItem){
    _myFavItemsList.add(favItem);
    notifyListeners();
  }

  void removeFavItemFromList(theItem favItem){
    _myFavItemsList.remove(favItem);
    notifyListeners();
  }

  void clearFavItemsFromList(){
    _myFavItemsList.clear();
    notifyListeners();
  }
  double get favItemTotalCost =>
      _myFavItemsList.fold(0.0, (previousValue, favItem) => previousValue+= favItem.itemCost);
}