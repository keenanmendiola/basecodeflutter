import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Function onPress;

  SecondaryButton({@required this.text, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPress,
      child: Text(text),
    );
  }
}
