import 'package:flutter/material.dart';
import 'screens/list_view_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
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
        child: ElevatedButton(
          child: Text('Go to List View'),
          onPressed: () {
            Navigator.pushNamed(context, '/list');
          },
        ),
      ),
    );
  }
}
