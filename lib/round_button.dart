import 'package:flutter/material.dart';

class getinto extends StatelessWidget {
  const getinto(this.color, @required this.onpressed, this.text);

  final Color color;
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(35.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),),
        ),
      ),
    );
  }
}