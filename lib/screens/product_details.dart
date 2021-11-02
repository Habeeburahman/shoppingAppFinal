import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/components/color_sample.dart';
import 'package:shoppingapp/components/custom_button.dart';
import 'package:shoppingapp/components/detail_categorie.dart';
import 'package:shoppingapp/components/notification.dart';
import 'package:shoppingapp/components/point.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/components/size.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
  }

  int selectedPage = 0;
  void changePage(int pageNumber) {
    setState(() {
      selectedPage = pageNumber;

      _pageController.animateToPage(pageNumber,
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: kSecondaryColor,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "American Tourister",
          style: TextStyle(color: kTextColor, fontSize: 19),
        ),
        actions: [
          NotificationWidget(
            iconName: Icons.shopping_cart_outlined,
            number: '12',
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$44.99",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 4),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 12,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 22,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Point(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Point(color: Colors.grey),
                  Point(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 19),
              width: 400,
              height: 400,
              child: Image.asset(
                "assets/icons/7882c765be20b6928ce335f8da8e4317.png",
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DetailCategorie(
                  selectedPage: selectedPage,
                  pageNumber: 0,
                  title: "Product",
                  function: () {
                    changePage(0);
                  },
                ),
                DetailCategorie(
                  selectedPage: selectedPage,
                  pageNumber: 1,
                  title: "Details",
                  function: () {
                    changePage(1);
                  },
                ),
                DetailCategorie(
                  selectedPage: selectedPage,
                  pageNumber: 2,
                  title: "Reviews",
                  function: () {
                    changePage(2);
                  },
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (pageNumber) {
                  changePage(pageNumber);
                },
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Color".toUpperCase(),
                          style: TextStyle(color: kTextColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ColorSample(
                              color: Colors.redAccent,
                              tick: true,
                            ),
                            ColorSample(
                              color: Colors.blueAccent,
                              tick: false,
                            ),
                            ColorSample(
                              color: Colors.greenAccent,
                              tick: false,
                            ),
                            ColorSample(
                              color: Colors.yellowAccent,
                              tick: false,
                            ),
                            ColorSample(
                              color: Colors.purpleAccent,
                              tick: false,
                            ),
                          ],
                        ),
                        Text(
                          "Select Size".toUpperCase(),
                          style: TextStyle(color: kTextColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Size(sizeText: "4.5", selected: false),
                            Size(
                              sizeText: "5.0",
                              selected: true,
                            ),
                            Size(
                              sizeText: "5.5",
                              selected: false,
                            ),
                            Size(sizeText: "6.0", selected: false),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          TextDetailsRow(textOne: "Brand",textTwo: "SKu",textTheree: "Adidas",textFour:  "098783784",),
                          TextDetailsRow(textOne: "Material",textTwo: "TypeCode",textTheree: "Plastic",textFour:  "aw87",),
                          TextDetailsRow(textOne: "From",textTwo: "Time",textTheree: "UAE",textFour:  "5 Days",),
                         
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text("reviews"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: CustomButton(
                  icon: Icons.share,
                  iconBgColor: Colors.grey,
                  buttonName: "Share this",
                  iconColor: Colors.white,
                  buttonColor: Colors.white,
                  textColor: Colors.black54,
                  margin: EdgeInsets.only(left: 10)),
            ),
            CustomButton(
                icon: Icons.arrow_forward_ios,
                iconBgColor: Colors.white,
                buttonName: "ADd to cart",
                iconColor: kTextColor,
                buttonColor: Colors.green.withOpacity(0.6),
                textColor: Colors.white,
                margin: EdgeInsets.only(left: 10)),
          ],
        ),
      ),
    );
  }
}

class TextDetailsRow extends StatelessWidget {
   TextDetailsRow({
    required this.textOne,
    required this.textTwo,
    required this. textTheree,
    required this. textFour,
    Key? key,
  }) : super(key: key);
String textOne;
String textTwo;
String textTheree;
String textFour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 25, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textOne.toUpperCase(),
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textTwo.toUpperCase(),
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height:5),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textTheree,
                style: TextStyle(color: kTextColor),
              ),
              Text(
               textFour,
                style: TextStyle(color: kTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
