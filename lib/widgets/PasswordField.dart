import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordField extends StatelessWidget {
  final bool obscureText;
  final Function onTap;
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  PasswordField(
      {@required this.obscureText,
      @required this.onTap,
      @required this.labelText,
      @required this.hintText,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(
            FontAwesomeIcons.lock,
          ),
        ),
        suffixIcon: GestureDetector(
          child: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onTap: onTap,
        ),
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );
  }
}
