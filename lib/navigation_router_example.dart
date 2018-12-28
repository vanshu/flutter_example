import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Launch screen'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Launch screen'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
