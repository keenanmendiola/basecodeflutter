import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;

  CustomTextFormField(
      {@required this.labelText,
      @required this.hintText,
      @required this.iconData,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(
            iconData,
          ),
        ),
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
      ),
    );
  }
}
