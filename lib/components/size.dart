
import 'package:flutter/material.dart';

class Size extends StatefulWidget {
   Size({
required this.sizeText,
required this. selected,
    Key? key,
  }) : super(key: key);

  String sizeText;
  bool selected;

  @override
  State<Size> createState() => _SizeState();
}

class _SizeState extends State<Size> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        setState(() {
          widget.selected=!widget.selected;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding:
            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Text(
          widget.sizeText,
          style: TextStyle(color: Colors.black54),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(4)),
            boxShadow: [
              BoxShadow(
                  color: widget.selected==true ? Colors.grey.withOpacity(0.2):Colors.white,
                  blurRadius: 4,
                  spreadRadius: 2)
            ]),
      ),
    );
  }
}
