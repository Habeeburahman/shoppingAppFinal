
import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({required this.number, required this.iconName});
  String number;
  IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      alignment: Alignment(-0.3, 0.3),
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconName,
              color: kTextColor,
            )),
        Container(
          padding: EdgeInsets.all(2),
          child: Text(
            number,
            style: TextStyle(color: Colors.white, fontSize: 8.1),
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
        ),
      ],
    ));
  }
}
