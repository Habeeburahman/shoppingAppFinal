import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingapp/components/categorie_item.dart';
import 'package:shoppingapp/components/custom_button.dart';
import 'package:shoppingapp/components/custom_heading.dart';
import 'package:shoppingapp/components/notification.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/components/page_view.dart';
import 'package:shoppingapp/components/product_item.dart';
import 'package:shoppingapp/constants.dart';
import 'package:shoppingapp/screens/all_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            NotificationWidget(
              iconName: Icons.question_answer_outlined,
              number: "15",
            ),
            NotificationWidget(
              iconName: Icons.notifications_outlined,
              number: "10",
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Text(
                "Categories",
                style: CustomHeading.heading(context),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 4),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CategoriesItems(
                        color: Colors.white,
                        category: "Watch",
                        assetPath: "assets/icons/watch-svgrepo-com (1).svg",
                      ),
                      CategoriesItems(
                        color: Colors.white,
                        category: "Cosmetic",
                        assetPath: "assets/icons/cosmetics-svgrepo-com.svg",
                      ),
                      CategoriesItems(
                        color: Colors.white,
                        category: "Shoe",
                        assetPath: "assets/icons/shoe-svgrepo-com.svg",
                      ),
                      CategoriesItems(
                        color: Colors.white,
                        category: "Shirt",
                        assetPath: "assets/icons/shirt-svgrepo-com.svg",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 14),
                  child: Text(
                    "Latest",
                    style: CustomHeading.heading(context),
                  )),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        "assets/icons/side-view-carefree-man-enjoying-freedom-with-arms-outstretched.jpg",
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                    bottom: 142,
                    left: 24,
                    child: Column(children: [
                      Text(
                        "For all your\nsummer clothing \nneeds",
                        style: GoogleFonts.raleway(
                            color: Colors.black54, fontSize: 19),
                      )
                    ]),
                  ),
                  Positioned(
                    bottom: 85,
                    left: 17,
                    child: InkWell(
                      onTap: () {},
                      child: CustomButton(
                        icon: Icons.arrow_forward_ios,
                          margin: EdgeInsets.only(left: 16),
                          textColor: Colors.black87,
                          buttonColor: Colors.white,
                          iconBgColor: kSecondaryColor,
                          buttonName: "See More",
                          iconColor: Colors.white),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItem(productPrice: "\$40.99",
                      productName: "TRAWOC",
                      assetPath: "assets/icons/7882c765be20b6928ce335f8da8e4317.png",),
                    ProductItem(productPrice: "\$40.99",
                      productName: "TRAWOC",
                      assetPath: "assets/icons/7882c765be20b6928ce335f8da8e4317.png",),
                    ProductItem(productPrice: "\$40.99",
                      productName: "TRAWOC",
                      assetPath: "assets/icons/7882c765be20b6928ce335f8da8e4317.png",),
               ProductItem(productPrice: "\$40.99",
                      productName: "TRAWOC",
                      assetPath: "assets/icons/7882c765be20b6928ce335f8da8e4317.png",),     
                    
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItem,
          showUnselectedLabels: true,
          selectedItemColor: kSecondaryColor,
          unselectedItemColor: kTextColor,
          onTap: (int itemNumber) {
              setState(() {
              selectedItem = itemNumber;
          moveToPage( itemNumber,context);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_outlined), label: "Menu"),
          ],
        ),
        
        );
  }
}

void moveToPage(int itemNumber,BuildContext context) {
  switch(itemNumber){
    case 0:
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
break;
case 1:
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllCategories()));
break;
case 4:
Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MenuScreen() ));
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      
    );
  }
}