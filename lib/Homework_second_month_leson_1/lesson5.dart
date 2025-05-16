// 1 task
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 315,
//             height: 184,
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [Color(0xff9c2cf3),Color
//                 (0xff3a49f9)]),
//               borderRadius: BorderRadius.circular(35),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Current Balance",
//                           style: TextStyle(color: Colors.white.withOpacity(0.5),
//                               fontSize:
//                               14),
//                         ),
//                         SizedBox(height: 5),
//                         Text("\$5,750,20",style:TextStyle(color: Colors
//                             .white,fontSize: 28)),
//                       ],
//                     ),
//
//                     Column(
//                       children: [
//                         SvgPicture.asset("assets/svgs/mastercard_logo.svg",),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row
//
//                   (
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:[
//                       Text("5282 3456 7890 1289",style: TextStyle(fontSize:14,
//                           color:Colors.white)),
//                       Text("09/25",style: TextStyle(fontSize: 14,color: Colors.white))
//                     ])
//               ],
//
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// second
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 315,
//             height: 184,
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [Color(0xff342c66),Color
//                 (0xfff55b46)]),
//               borderRadius: BorderRadius.circular(35),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Current Balance",
//                           style: TextStyle(color: Colors.white.withOpacity(0.5),
//                               fontSize:
//                               14),
//                         ),
//                         SizedBox(height: 5),
//                         Text("\$4,570,80",style:TextStyle(color: Colors
//                             .white,fontSize: 28)),
//                       ],
//                     ),
//
//                     Column(
//                       children: [
//                         SvgPicture.asset("assets/svgs/mastercard_logo.svg",),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row
//
//                   (
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children:[
//                       Text("5294 2436 4780 2468",style: TextStyle(fontSize:14,
//                           color:Colors.white)),
//                       Text("12/24",style: TextStyle(fontSize: 14,color: Colors
//                           .white))
//                     ])
//               ],
//
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// 2 task
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 145,
//             height: 184,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff342c66), Color(0xfff55b46)],
//               ),
//               borderRadius: BorderRadius.circular(35),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SvgPicture.asset(
//                   "assets/svgs/Logo.svg",
//                   color: Colors.white.withOpacity(0.2),
//                 ),
//                 SizedBox(height: 35),
//
//                 Text(
//                   "Cedit Card",
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white.withOpacity(0.5),
//                   ),
//                 ),
//                 SizedBox(height: 15),
//                 Row(
//                   spacing: 4,
//                   children: [
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SizedBox(width: 10),
//                     Text("2468", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,borderRadius: BorderRadius
//                               .circular(3)
//                           ),
//                           width: 22,
//                           height: 15,
//                           child:
//                           SvgPicture.asset("assets/svgs/Group.svg")
//                       ),
//                       Text("12/24",style: TextStyle(fontSize: 11,color:Colors.white))
//                     ]
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//second
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 145,
//             height: 184,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff9c2cf3), Color(0xff3a49f9)],
//               ),
//               borderRadius: BorderRadius.circular(35),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SvgPicture.asset(
//                   "assets/svgs/Logo.svg",
//                   color: Colors.white.withOpacity(0.2),
//                 ),
//                 SizedBox(height: 35),
//
//                 Text(
//                   "Cedit Card",
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white.withOpacity(0.5),
//                   ),
//                 ),
//                 SizedBox(height: 15),
//                 Row(
//                   spacing: 4,
//                   children: [
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SvgPicture.asset("assets/svgs/Ellipse 4.svg"),
//                     SizedBox(width: 10),
//                     Text("1289", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,borderRadius: BorderRadius
//                               .circular(3)
//                           ),
//                           width: 22,
//                           height: 15,
//                           child:
//                           SvgPicture.asset("assets/svgs/Group.svg")
//                       ),
//                       Text("09/25",style: TextStyle(fontSize: 11,color:Colors
//                           .white))
//                     ]
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
Image.asset("assets/images/visa.png"),
Spacer(),
Text("**********2109")

