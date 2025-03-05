import 'package:flutter/material.dart';
import 'package:flutter_shopping_crt/Model/shopping_list_screen.dart';
import 'package:flutter_shopping_crt/Provider/fav_items_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>FavItemNotifier(),
      child: MaterialApp(
        home: ShoppingListScreen(),
      ),
    );
  }
}
