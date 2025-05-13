
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          Lottie.asset("assets/disney.json")
        ],),
      )
      
    );
  }
}
