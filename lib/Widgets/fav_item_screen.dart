import 'package:flutter/material.dart';
import 'package:flutter_shopping_crt/Model/shopping_items_model.dart';
import 'package:flutter_shopping_crt/Provider/fav_items_notifier.dart';
import 'package:provider/provider.dart';

class FavItemScreen extends StatelessWidget {
  const FavItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<FavItemNotifier>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favourite Shopping Items'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => FavItemScreen()));
            }, icon: Icon(Icons.favorite)),
          ],
        ),
        body: Consumer(builder:(context, value, child){
        return Column(
          children: [
           Expanded(child: ListView.builder(
               itemCount: myProvider.getMyFavItemsList.length,
               itemBuilder: (context,index){
                 theItem item = myProvider.getMyFavItemsList[index];
                 return ListTile(
                   title: Text(item.itemName),
                   trailing: Icon(Icons.favorite),
                   leading: Text(item.itemCost.toString()),

                 );
               }

           )
           ),
           SizedBox(height: 2, width: MediaQuery.sizeOf(context).width,
           ),
           Row(
             children: [
               TextButton(onPressed: (){
               }, child: Text('£'+ myProvider.favItemTotalCost.toStringAsFixed(2))),
               Spacer(),
               TextButton(onPressed: (){
                 myProvider.clearFavItemsFromList();
               }, child: Text('Clear List'))
             ],
           ),
          ],
        );
        }
        ),
      ),
    );
  }
}
