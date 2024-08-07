import 'package:flutter/material.dart';

class DetailsViewScreen extends StatelessWidget {
  final dynamic item;

  DetailsViewScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['name'] ?? 'Details')),
      body: Center(
        child: Card(
          elevation: 8.0,
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ID: ${item['id'] ?? 'No ID'}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 8),
                Text('Name: ${item['name'] ?? 'No Name'}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 8),
                Text('Data: ${item['data'] ?? 'No Data'}', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
