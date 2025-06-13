import 'package:cinemax/cure/utils/app_media.dart';
import 'package:cinemax/data.dart';
import 'package:cinemax/models/product_model.dart';
import 'package:cinemax/pages/question_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CategoryModel> categories = questionsData
      .map((categories) => CategoryModel.fromjeson(categories))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          spacing: 10,
          children: [
            Icon(Icons.person),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rahmatulloh", style: TextStyle(fontSize: 15)),
                  Text("ID- 32162", style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF4EA4FF),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Image.asset(AppSvgs.diamondImage, width: 15, height: 15),
                    Text("180", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              width: 380,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(AppSvgs.cupImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color(0xFF15376B),
                    BlendMode.color,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Test Your Knowledge with\n Quizzes",
                      style: TextStyle(
                        fontFamily: "PlayfairDisplay",
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "You're just looking for a playful way to learn\n"
                      "new facts, our quizzes are designed to\n"
                      "entertain and educate.",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Play Now",
                          style: TextStyle(
                            color: Color(0xFF15376B),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              spacing: 5,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 350,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [Text("Search"), Spacer(), Icon(Icons.search)],
                    ),
                  ),
                ),
                Icon(Icons.settings),
              ],
            ),
            SizedBox(height: 10),
            Row(children: [Text("Categories", style: TextStyle(fontSize: 15))]),
            SizedBox(
              width: double.infinity,
              height: 90,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image.network(
                              width: 50,
                              height: 50,
                              category.categoryImage,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            category.category,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  "Recent Activity",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 370,
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(category: category ), // Replace with your screen
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4, // Adds a slight shadow effect
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Hero(
                              tag: category.categoryImage.toString(),
                              child: Image.network(
                                category.categoryImage,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category.category,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "30 Questions",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Spacer(),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircularProgressIndicator(
                                  value: 0.75,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 33,
                                  height: 33,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "25/30",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_outlined),
            label: "categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
