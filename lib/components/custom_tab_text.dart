import 'package:flutter/material.dart';
import 'package:shoppingapp/components/custom_heading.dart';
import 'package:shoppingapp/constants.dart';

class CustomTabText extends StatelessWidget {
  final String text;
  final pagenumber;
  final selectedpage;
  final Function ontapFunction;
  CustomTabText(
      {required this.text,
      this.pagenumber,
      this.selectedpage,
      required this.ontapFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ontapFunction();
        },
        child: Text(
          text,
          style: CustomHeading.heading(context).copyWith(color: selectedpage==pagenumber?kSecondaryColor:Colors.black87.withOpacity(0.7))
        ));
  }
}
