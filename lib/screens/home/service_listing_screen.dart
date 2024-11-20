import 'package:flutter/material.dart';

class ServiceListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Services')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: Image.network(
                'https://via.placeholder.com/100', // Replace with a random image URL
                width: 50,
                height: 50,
              ),
              title: Text('Service ${index + 1}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Add to cart logic
                },
                child: Text('Add'),
              ),
            ),
          );
        },
      ),
    );
  }
}
