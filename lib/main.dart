import 'package:flutter/material.dart';
import 'screens/list_view_screen.dart'; 
import 'home_screen.dart';    
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Android_list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),         
      routes: {
        '/list': (context) => ListViewScreen(), 
      },
    );
  }
}
