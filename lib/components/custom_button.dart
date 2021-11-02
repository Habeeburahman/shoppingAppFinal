
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    required this.iconBgColor,
    required this.buttonName,
    required this.iconColor,
    required this.buttonColor,
    required this.textColor,
    required this.margin,
    required this.icon
  });
  Color iconBgColor;
  final String buttonName;
  Color iconColor;
  Color buttonColor;
  Color textColor;
  EdgeInsets margin;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.only(left:12.0,right: 12,bottom: 8,top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            buttonName.toUpperCase(),
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold),
          ),
          Container(
               margin: margin,
              child: Container(
               
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: iconBgColor,
                  shape: BoxShape.circle),
                child: Icon(
                
                  icon,
                  color: iconColor,
                  size: 12,
                ),
              ))
        ],
      ),
      decoration: BoxDecoration(
        boxShadow:[ BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 2,
          spreadRadius: 2

        )],
        color: buttonColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
