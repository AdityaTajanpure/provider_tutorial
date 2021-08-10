import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/shopping_cart_provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Text('Items in cart: ${context.watch<ShoppingCart>().count}'),
          SizedBox(
            height: 10,
          ),
          Text('Items in cart: ${context.watch<ShoppingCart>().items}'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
        tooltip: "Add Item",
      ),
    );
  }
}
