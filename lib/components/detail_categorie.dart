
import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';

class DetailCategorie extends StatelessWidget {
   DetailCategorie({
    Key? key,
    required this.selectedPage,
    required this. pageNumber,
    required this.title,
    required this.function,
  }) : super(key: key);

  int selectedPage;
  int pageNumber;
  String title;
  Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){function();},
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal:6,vertical: 3.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [BoxShadow(color:selectedPage==pageNumber? Colors.grey.withOpacity(0.2):Colors.white,spreadRadius: 2,blurRadius: 5)],
          color: selectedPage==pageNumber? Colors.white:Colors.transparent),
        child: Text(
          title,
          style: TextStyle(color: selectedPage==pageNumber ? kSecondaryColor:Colors.black54),
        ),
      ),
    );
  }
}
