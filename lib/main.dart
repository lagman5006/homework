import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project_day1/my_app_container.dart';
import 'package:new_project_day1/utils/app_colors.dart';
import 'package:new_project_day1/utils/app_fonts.dart';
import 'package:new_project_day1/utils/app_media.dart';

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    spacing: 10,
                    children: [
                      Image.asset(appImage.profilImage),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildHeader(text: "Rumi Aktar", fontSize: 12),
                          buildHeader(text: "ID - 1809"),
                        ],
                      ),
                      Spacer(),
                      MyAppContainer(),
                    ],
                  ),
                ),

                Container(
                  width: 328,
                  height: 129,
                  decoration: BoxDecoration(
                    color: appColors.bigContainerColor,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(appImage.kubokImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: appColors.generalColorBlue.withOpacity(0.5),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildHeader(
                              text: "Test Your Knowledge \nwith",
                              fonFamily: "PlayfairDisplay",
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            buildHeader(
                              text:
                                  "You're just loking for a platful way to learn"
                                  "\n new facts. our quizzes are ddesigned to"
                                  "\n entertain and educate.",
                              color: Colors.white,
                              fonFamily: "PlayfairDisplay",
                              fontSize: 6,
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: appColors.generalColorWhite,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: buildHeader(
                                text: "Play Now",
                                fontSize: 7,
                                fonFamily: "PlayfairDisplay",
                                color: appColors.generalColorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: 290,
                      height: 26,
                      decoration: BoxDecoration(
                        color: appColors.searchingColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          buildHeader(
                            text: "Search",
                            color: appColors.generalColorBlack.withOpacity(0.5),
                          ),
                          Spacer(),
                          Icon(Icons.search_outlined, size: 15),
                        ],
                      ),
                    ),
                    SvgPicture.asset(appSvgs.optionsSvg),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                    ),
                    buildHeader(text: "Cotegories", fontSize: 12),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    spacing: 15,

                    children: [
                      horizontalContainer(appImage.html),
                      horizontalContainer(appImage.javascriptImage),
                      horizontalContainer(appImage.rejactImage),
                      horizontalContainer(appImage.cImage),
                      horizontalContainer(appImage.pythonImage),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildHeader(text: "HTML", fontSize: 10),

                      buildHeader(text: "JAVASCRIPT", fontSize: 10),

                      buildHeader(text: "REACT", fontSize: 10),

                      buildHeader(text: "C++", fontSize: 10),

                      buildHeader(text: "PYTHON", fontSize: 10),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: buildHeader(text: "Recent Activity", fontSize: 12),
                    ),
                  ],
                ),
                verticalContainers(
                  appImage.html,
                  "HTML",
                  "30 Question",
                  appImage.Image2630Image,
                ),
                verticalContainers(
                  appImage.javascriptImage,
                  "JAVASCRIPT",
                  "30 "
                      "Question",
                  appImage.Image2030Image,
                ),
                verticalContainers(
                  appImage.rejactImage,
                  "REACT",
                  "30 Question",
                  appImage.Image2530Image,
                ),
                verticalContainers(
                  appImage.cImage,
                  "C++",
                  "30 Question",
                  appImage.Image2730Image,
                ),
                verticalContainers(
                  appImage.pythonImage,
                  "PYTHON",
                  "30 "
                      "Question",
                  appImage.Image2230Image,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Grid"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label:
                  "Favo"
                  "rit"
                  "e",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label:
                  "Profil"
                  "e",
            ),
          ],
        ),
      ),
    );
  }
}

Container horizontalContainer(String icon) {
  return Container(
    alignment: Alignment.center,
    width: 52,
    height: 50,
    decoration: BoxDecoration(
      color: appColors.searchingColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Image.asset(icon),
  );
}

Container verticalContainers(
  String icon,
  String text,
  String text2,
  String image,
) {
  return Container(
    width: 328,
    height: 58,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: appColors.generalColorBlack.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 2,
        ),
      ],
      color: appColors.generalColorWhite,
      border: Border.all(color: appColors.searchingColor),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      spacing: 15,
      children: [
        SizedBox(width: 0),
        horizontalContainer(icon),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildHeader(text: text, fontSize: 14),
            buildHeader(text: text2, fontSize: 7),
          ],
        ),
        Spacer(),

        Image.asset(image),
        SizedBox(width: 5),
      ],
    ),
  );
}
