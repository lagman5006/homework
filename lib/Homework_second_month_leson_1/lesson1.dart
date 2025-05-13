// 1 task
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const Myapp());
// }
// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("My First App"),
//           backgroundColor: Colors.red,
//         ),
//         body: const Center(child: Text("Hello, Flutter!",
//           style: TextStyle(fontSize: 24,color: Colors.blue),
//         ),),
//       ),
//     );
//   }
// }


// 2 task
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Myapp());
// }
//
// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.blueGrey,
//           title: Text("Welcome"),
//         ),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Flutter makes app development fun!",
//                 style: TextStyle(color: Colors.white,
//                     fontSize: 22
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// second version
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Myapp());
// }
//
// class Myapp extends StatelessWidget {
//   const Myapp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//         debugShowCheckedModeBanner: false,
//         home: CupertinoPageScaffold(
//           backgroundColor: Colors.black,
//           navigationBar:
//           CupertinoNavigationBar(middle: Text("Welcome"),), child:
//         Center(child: Text("Cupetino"),),
//         )
//     );
//   }
// }

// 3 task
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   String _text = "Flutter is awesome!";
//
//   void _showAlertDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text("Change Text"),
//         content: const Text("Would you like to change the text?"),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("Cancel"),
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 _text = _text == "Flutter is awesome!"
//                     ? "Flutter is powerful!"
//                     : "Flutter is awesome!";
//               });
//               Navigator.pop(context);
//             },
//             child: const Text("Change"),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: const Text("Flutter App"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               color: Colors.blue[100],
//               child: const Center(
//                 child: Text(
//                   "Flutter haqida matn bilan",
//                   style: TextStyle(fontSize: 25),
//                 ),
//               ),
//             ),
//           ),
//           const Divider(),
//           Expanded(
//             child: Container(
//               color: Colors.yellow[100],
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     _text,
//                     style: const TextStyle(fontSize: 25),
//                   ),
//                   const SizedBox(height: 10), // Space between text and button
//                   IconButton(
//                     icon: const Icon(Icons.edit, size: 30),
//                     onPressed: _showAlertDialog,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// 4 task
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   String _text = "Hello, Flutter!";
//
//   void _updateText(String newText) {
//     setState(() {
//       _text = newText;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: const Text("Interactive Flutter App"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             _text,
//             style: const TextStyle(fontSize: 30, color: Colors.red),
//           ),
//           const SizedBox(height: 20), // Spacing between text and buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.thumb_up, size: 40),
//                 onPressed: () => _updateText("Button 1 Pressed!"),
//               ),
//               const SizedBox(width: 20), // Spacing between buttons
//               IconButton(
//                 icon: const Icon(Icons.star, size: 40),
//                 onPressed: () => _updateText("Button 2 Pressed!"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


// 5 task
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: const Text("Interactive Drawer App"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text(
//                 "Navigation Menu",
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             ListTile(
//               title: const Text("Go to Screen 1"),
//               leading: const Icon(Icons.arrow_forward),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Screen1()),
//                 );
//               },
//             ),
//             ListTile(
//               title: const Text("Go to Screen 2"),
//               leading: const Icon(Icons.arrow_forward),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Screen2()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to the App",
//           style: TextStyle(fontSize: 30, color: Colors.black),
//         ),
//       ),
//     );
//   }
// }
//
// class Screen1 extends StatefulWidget {
//   const Screen1({super.key});
//
//   @override
//   _Screen1State createState() => _Screen1State();
// }
//
// class _Screen1State extends State<Screen1> {
//   String _text = "You are on Screen 1";
//
//   void _updateText() {
//     setState(() {
//       _text = "Hello from Screen 1";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Screen 1")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _text,
//               style: const TextStyle(fontSize: 30, color: Colors.red),
//             ),
//             const SizedBox(height: 20),
//             IconButton(
//               icon: const Icon(Icons.edit, size: 40),
//               onPressed: _updateText,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatefulWidget {
//   const Screen2({super.key});
//
//   @override
//   _Screen2State createState() => _Screen2State();
// }
//
// class _Screen2State extends State<Screen2> {
//   String _text = "You are on Screen 2";
//
//   void _updateText() {
//     setState(() {
//       _text = "Hello from Screen 2";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Screen 2")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _text,
//               style: const TextStyle(fontSize: 30, color: Colors.green),
//             ),
//             const SizedBox(height: 20),
//             IconButton(
//               icon: const Icon(Icons.edit, size: 40),
//               onPressed: _updateText,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }