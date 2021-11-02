
import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;
  String labelText;
  bool passwordTextField;
  Icon icon;
  TextFieldWidget(
      {required this.hintText, required this.icon, required this.labelText,required this.passwordTextField});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:passwordTextField==true?true:false,
      decoration: InputDecoration(
        
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: kTextColor.withOpacity(0.7)),
        labelText: labelText.toUpperCase(),
        icon: icon,
      ),
    );
  }
}
