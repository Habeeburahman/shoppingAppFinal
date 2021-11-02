
import 'package:flutter/material.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/screens/product_details.dart';

class ProductItem extends StatelessWidget {
   ProductItem({
     required this.assetPath,
     required this.productName,
     required this.productPrice
    
  }); 
  String assetPath;
  String productName;
  String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails()));

            },
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                margin: EdgeInsets.only(top: 15,bottom: 8),
                decoration: BoxDecoration(color: Colors.white),
                width: 180,
                height: 100,
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    
                    assetPath,
                  ),
                ),
              ),
            ),
          ),
          Text(productName.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
          Text(productPrice,style: TextStyle(color: kTextColor),)
        ],
      ),
      margin: EdgeInsets.only(top: 27, left: 7, right: 7,bottom: 15),
      height: 160,
      width: 125,
      decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
    spreadRadius: 2,
    blurRadius: 5,
    color: Colors.grey.withOpacity(.2),
            )
          ],
         borderRadius: BorderRadius.all(Radius.circular(8)),color:Colors.white ),
    );
  }
}
