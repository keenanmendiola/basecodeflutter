import 'package:basecode/screens/DashboardScreen.dart';
import 'package:basecode/screens/ForgotPasswordScreen.dart';
import 'package:basecode/screens/LoginScreen.dart';
import 'package:basecode/screens/RegistrationScreen.dart';
import 'package:basecode/screens/SettingsScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  RegistrationScreen.routeName: (BuildContext context) => RegistrationScreen(),
  ForgotPasswordScreen.routeName: (BuildContext context) =>
      ForgotPasswordScreen(),
  DashboardScreen.routeName: (BuildContext context) => DashboardScreen(),
  SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
};
