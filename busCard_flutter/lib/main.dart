import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                speed: 1000,
                front: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal.shade300, shape: BoxShape.rectangle),
                  child: Center(
                    child: Text(
                      'Hello...',
                      style: TextStyle(
                        fontFamily: 'pacifico',
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                back: Container(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/funmi.JPG'),
                      ),
                      Text(
                        'Maria F. Elijah',
                        style: TextStyle(
                            fontFamily: 'pacifico',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'FLUTTER & PYTHON DEVELOPER',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal.shade200,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 2.5),
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.teal.shade100,
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.teal.shade900,
                          ),
                          title: Text(
                            '+234 8164 634 305',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.teal.shade900,
                          ),
                          title: Text(
                            'elijahmaria04@gmail.com',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
