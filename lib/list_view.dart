import 'package:flutter/material.dart';
import './catalog.dart';
import './itemWidget.dart';
class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tests'),
      ),
      backgroundColor: Color.fromARGB(255, 250, 239, 239),
      body:ListView.builder(
          itemCount: CatalogModel.items.length,
          
          itemBuilder: (context,index){


          return ItemWidget(item: CatalogModel.items[index]);
        }
        
        ));
  }
}