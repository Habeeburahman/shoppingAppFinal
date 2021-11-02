import 'package:flutter/material.dart';

class ColorSample extends StatefulWidget {
  ColorSample({
   required this.color,
   required this.tick,
  });
  Color color;
  bool tick;

  @override
  State<ColorSample> createState() => _ColorSampleState();
}

class _ColorSampleState extends State<ColorSample> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      setState(() {
        widget.tick=!widget.tick;
      });
      },
      child: Container(
        child: widget.tick==true? Icon(Icons.done,color: Colors.white,):Container(),
        margin: EdgeInsets.symmetric(vertical: 14),
        width: 30,
        height: 30,
        
        decoration: BoxDecoration(color: widget.color,shape: BoxShape.circle,boxShadow: [BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 4,
        blurRadius: 5
      )]),),
    );
  }
}