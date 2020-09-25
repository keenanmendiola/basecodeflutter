import 'package:flutter/material.dart';
import './screens/LoginScreen.dart';
import './routes.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.teal[700],
      accentColor: Colors.yellow[800],
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 18.0),
      ),
    ),
    routes: routes,
    home: LoginScreen(),
  ));
}
