import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/flutter.png'),
            ],
          )
        )
      )
    );
  }
}