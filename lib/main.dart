import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

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
        body: Center(
          child: Container(
            width: 145,
            height: 184,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff9c2cf3), Color(0xff3a49f9)],
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/svgs/Logo.svg",
                  color: Colors.white.withOpacity(0.2),
                ),
                SizedBox(height: 35),

                Text(
                  "Cedit Card",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  spacing: 4,
                  children: [
                    SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
                    SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
                    SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
                    SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
                    SizedBox(width: 10),
                    Text("1289", style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,borderRadius: BorderRadius
                              .circular(3)
                          ),
                          width: 22,
                          height: 15,
                          child:
                          SvgPicture.asset("assets/svgs/Group.svg")
                      ),
                      Text("09/25",style: TextStyle(fontSize: 11,color:Colors
                          .white))
                    ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}