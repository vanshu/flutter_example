import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyHome(),
    // Set the theme's primary color, accent color,
    theme: new ThemeData(
      primarySwatch: Colors.deepOrange,
      accentColor: Colors.orangeAccent,
      // Set background color
      backgroundColor: Colors.blue,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Using theme'),
      ),
      body: new Container(
        decoration: new BoxDecoration(color: Colors.black87),
        child: new Center(
          child: new Container(
            color: Theme.of(context).accentColor,
            child: new Text(
              'Hello World',
              style: TextStyle(
                  color: Colors.blue.withOpacity(1.0),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
