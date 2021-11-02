import 'package:flutter/material.dart';

class Point extends StatelessWidget {
 Point({
 required this.color
  });
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13,),
      decoration: BoxDecoration(color: color,shape: BoxShape.circle,),width: 5,height: 5,);
  }
}