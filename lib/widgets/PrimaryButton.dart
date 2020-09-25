import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onPress;
  PrimaryButton(
      {@required this.text, @required this.iconData, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      minWidth: double.maxFinite,
      height: 50,
      child: RaisedButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(
              width: 10.0,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
        elevation: 8.0,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
