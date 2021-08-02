
import 'package:flutter/material.dart';
import 'package:fruitui/request.dart';
import 'fruit.dart';
import 'fruitItem.dart';
  
class FruitList extends StatelessWidget {
  final List<Fruits> items;
  
  FruitList({Key? key, required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FruitItem(item: items[index]);
      },
    );
  }
}