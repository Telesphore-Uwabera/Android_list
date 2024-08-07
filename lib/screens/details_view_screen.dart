import 'package:flutter/material.dart';

class DetailsViewScreen extends StatelessWidget {
  final Map<String, dynamic> item;

  DetailsViewScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['name'] ?? 'Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Center(
        child: Card(
          elevation: 8.0,
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item['name'] ?? 'No Name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8.0),
                Text(
                  item['data'] ?? 'No Data',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
