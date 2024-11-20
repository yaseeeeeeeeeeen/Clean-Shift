import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 5, // Replace with dynamic cart items
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network('https://via.placeholder.com/100'),
            title: Text('Service ${index + 1}'),
            subtitle: Text('Quantity: 1'),
            trailing: Text('Price: \$50'),
          );
        },
      ),
    );
  }
}
