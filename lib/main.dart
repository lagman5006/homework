import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.keyboard_arrow_left, size: 35),
          title: Text("Checkout"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Row(children: [Text("Order"), Spacer(), Text("\$ 7,000")]),
                Row(children: [Text("Shopping"), Spacer(), Text("\$  30")]),
                Row(children: [Text("Total"), Spacer(), Text("\$ 7,030")]),
                Divider(),
                Text("Payment"),
                functionRows("assets/images/visa.png", "*********2109"),
                functionRows("assets/images/paypal.png", "*********2109"),
                functionRows("assets/images/master.png", "*********2109"),
                functionRows("assets/images/apple.png", "*********2109"),
                Container(
                  width: 320,
                  height: 59,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/home1.svg",
                color: Colors.blue,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/heart1.svg",
                color: Colors.blue,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/shopping.svg",
                color: Colors.blue,
              ),
              label: "Shopping-cart",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/search1.svg",
                color: Colors.blue,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/settings.svg",
                color: Colors.blue,
              ),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}

Container functionRows(String label, String text) {
  return Container(
    width: 320,
    height: 59,
    decoration: BoxDecoration(
      color: Color(0xffF4F4F4),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: [Image.asset(label), Spacer(), Text(text)]),
    ),
  );
}
