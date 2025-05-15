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
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Welcome \nBack!",
                    style: TextStyle(
                      fontFamily: "assets/fonts/static/Montserrat-Regular.ttf",
                      fontSize: 43,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                containers("assets/svgs/User.svg", "Username or Email"),
                SizedBox(height: 25),
                containers(
                  "assets/svgs/Group 2.svg",
                  "Password",
                  "assets/svgs/eye.svg",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "ForgotPassword?",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  width: 317,
                  height: 55,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  child: Column(
                    children: [
                      Text("- Qr Continue with -"),
                      SizedBox(height: 8),
                      Image.asset("assets/images/Buttons.png"),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Create An Account",
                              style: TextStyle(fontSize: 9),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),

                          Expanded(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 9, color: Colors.red),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container containers(String user, String username, [String eye = ""]) {
  return Container(
    margin: EdgeInsets.only(left: 25),
    width: 317,
    height: 55,
    decoration: BoxDecoration(
      color: Color(0xffA8A8A9).withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        SizedBox(width: 20),
        SvgPicture.asset(user),
        SizedBox(width: 10),
        Expanded(child: Text(username, overflow: TextOverflow.ellipsis)),
        Spacer(),
        if (eye.isNotEmpty) SvgPicture.asset(eye),
        SizedBox(width: 15),
      ],
    ),
  );
}
