
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingapp/constants.dart';

class CategoriesItems extends StatelessWidget {
  CategoriesItems(
      {required this.assetPath, required this.category, required this.color});
  String assetPath;
  String category;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 4, top: 10,left: 10,right: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.grey.withOpacity(.2),
            )
          ], color: color, shape: BoxShape.circle),
          child: SizedBox(
              width: 50, height: 50, child: SvgPicture.asset(assetPath)),
        ),
        Text(
          category,
          style: TextStyle(color: kTextColor),
        )
      ],
    );
  }
}
