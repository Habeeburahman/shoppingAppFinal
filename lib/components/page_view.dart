import 'package:flutter/material.dart';
import 'package:shoppingapp/components/custom_button.dart';
import 'package:shoppingapp/components/text_field.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/screens/home_page.dart';

class PageViewWidget extends StatelessWidget {
  PageViewWidget({
    required this.password,
    required this.mediaQuiry,
    required this.email,
    required this.userName,
    required this.buttonName,
    required this.description,
  });

  Size mediaQuiry;
  bool email;
  bool password;
  bool userName;
  String buttonName;
  List<String> description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6, left: 20, right: 20),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               email==true? TextFieldWidget(
                 passwordTextField: false,
        labelText: "Email",
        hintText: "manu@gmail.com",
        icon: const Icon(Icons.mail),
      ): Container(),
               userName==true? TextFieldWidget(
                 passwordTextField: false,
                  labelText: "Username",
                  hintText: "manu",
                  icon: const Icon(Icons.person),
                ):Container(),
               password==true? TextFieldWidget(
                 passwordTextField: true,
                  labelText: "password",
                  hintText: "",
                  icon: const Icon(Icons.lock),
                ):Container(),
              ],
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(9)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: Container(
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: InkWell(
                    onTap: () {

                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: CustomButton(
                      icon: Icons.arrow_forward_ios,
                      margin: EdgeInsets.only(left: 110),
                      textColor: Colors.white,
                      buttonColor: kSecondaryColor,
                      buttonName: buttonName,iconBgColor: Colors.white,iconColor: kSecondaryColor,),
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 13),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: description[0]),
                    TextSpan(
                      text: description[1],
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kSecondaryColor),
                    ),
                    TextSpan(
                      text: description[2],
                    ),
                    TextSpan(
                        text: description[3],
                        style: TextStyle(color: kSecondaryColor)),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

 
}
