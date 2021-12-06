import 'package:flutter/material.dart';
import 'package:kids_learning_games/screens/create_account.dart';
import 'package:kids_learning_games/screens/sign_in.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/second': (context) => signin(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    'Kids Learning Games',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Text('Play as Guest')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Create Account')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const Text('Sign in')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
