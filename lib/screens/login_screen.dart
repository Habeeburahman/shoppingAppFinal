import 'package:flutter/material.dart';
import 'package:shoppingapp/components/custom_tab_text.dart';
import 'package:shoppingapp/components/page_view.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int selectedpage = 0;
  changeMethod(int pagenumber) {
    setState(() {
      selectedpage = pagenumber;
      _pageController.animateToPage(pagenumber,
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuiry = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTabText(
                text: "Sign Up",
                pagenumber: 0,
                selectedpage: selectedpage,
                ontapFunction: () {
                  changeMethod(0);
                },
              ),
              CustomTabText(
                text: "Log In",
                pagenumber: 1,
                selectedpage: selectedpage,
                ontapFunction: () {
                  changeMethod(1);
                },
              ),
              CustomTabText(
                text: "Forgot",
                pagenumber: 2,
                selectedpage: selectedpage,
                ontapFunction: () {
                  changeMethod(2);
                },
              ),
            ],
          ),
          Expanded(
              child: PageView(
            onPageChanged: (int page) {
              setState(() {
                selectedpage = page;
              });
            },
            controller: _pageController,
            children: [
              PageViewWidget(
                mediaQuiry: mediaQuiry,
                email: true,
                password:true,
                userName: true,
                buttonName: "sign Up",
                description: ['By creating an account, you agree to our  ','\nTerms of Sevrvice'," and",' Privacy Policy'],
              ),
              PageViewWidget(
                mediaQuiry: mediaQuiry,
                email: false,
                password: true,
                userName: true,
                buttonName: "log in",
                description: ['Dont have a account ? swipe left to  ','\n create account',"",""],
              ),
            
              PageViewWidget(
                mediaQuiry: mediaQuiry,
                email: true,
                password: false,
                userName: false,
                buttonName: "send email",
                description: ['Enter the email address  you used to  ','\n create your account'," and we wil send to \n you a link to reset your password"," "],
              ),
            
             
            ],
          ))
        ],
      ),
    );
  }
}

