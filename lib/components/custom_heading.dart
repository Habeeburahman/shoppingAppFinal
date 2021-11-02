import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHeading{

  static TextStyle heading(BuildContext context){
    return Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black87.withOpacity(0.7),fontWeight: FontWeight.bold);
  }

}