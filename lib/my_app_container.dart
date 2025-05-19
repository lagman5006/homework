import 'package:flutter/material.dart';
import 'package:new_project_day1/utils/app_colors.dart';
import 'package:new_project_day1/utils/app_fonts.dart';

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: appColors.mainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        spacing: 2,
        children: [
          SizedBox(width: 2),
          Icon(Icons.diamond_outlined, size: 15),
          buildHeader(text: "160", fontSize: 10),
        ],
      ),
    );
  }
}
