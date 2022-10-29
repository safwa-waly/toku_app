import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text, required this.color,required this.onTap});
  String text;
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: color,
        child: Text(
          text,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}