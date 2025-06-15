import 'package:cinemax/cure/utils/app_colors.dart';
import 'package:cinemax/cure/utils/app_fonts.dart';
import 'package:cinemax/cure/utils/app_media.dart';
import 'package:cinemax/pages/sign_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'login_page.dart';



class LoginIn extends StatelessWidget {
  void _launchUrl( )async{
    final Uri url = Uri.parse("https://accounts.google.com/");

  }
  const LoginIn({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Appmedia.cinemaxSvg),

          Text(
            "CINEMAX",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 30,
              fontFamily: AppFonts.montserratfont,
            ),
          ),

          Text(
            textAlign: TextAlign.center,
            "Enter your registred \n"
            "Phone Number to Sign Up",
            style: TextStyle(
              color: AppColors.whiteGreyColor,
              fontFamily: AppFonts.montserratfont,
            ),
          ),
          SizedBox(height: 25.h,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(250, 40),
              backgroundColor: AppColors.cinemaxColor,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignPage()));
            },
            child: Text("Sign Up"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("I already have an account? ",style: TextStyle(color: AppColors.whiteGreyColor),),
              GestureDetector(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  child: Text("login",style: TextStyle(color: AppColors.cinemaxColor),))
            ],
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              spacing: 10,
              children: [
                Expanded(child: Divider(color: AppColors.whiteGreyColor)),
                Text(
                  "Or Sign up with",
                  style: TextStyle(color: AppColors.whiteGreyColor),
                ),
                Expanded(child: Divider(color: AppColors.whiteGreyColor)),
              ],

            ),
          ),
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 25,
            children: [
              IconButton(onPressed: _launchUrl, icon: SvgPicture.asset(Appmedia.googleSvg),),
              SvgPicture.asset(Appmedia.appleSvg),
              SvgPicture.asset(Appmedia.facebookSvg),
            ],
          )
        ],
      ),
    );
  }
}
