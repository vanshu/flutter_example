import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
          Text('We move under cover and we move as one'),
          Text('Through the night, we have one shot to live another day'),
          Text('We cannot let a stray gunshot give us away'),
          Text('We will fight up close, seize the moment and stay in it'),
          Text('It’s either that or meet the business end of a bayonet'),
          Text('The code word is ‘Rochambeau,’ dig me?'),
          Text('Rochambeau!',
              style: DefaultTextStyle.of(context)
                  .style
                  .apply(fontSizeFactor: 1.0)),
          IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10%',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
