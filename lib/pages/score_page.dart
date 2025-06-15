import 'package:cinemax/pages/home_page.dart';
import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
   int correctAnswers = 0;
   int wrongAnswers = 0;

   ScorePage({super.key,required this.correctAnswers, required this.wrongAnswers});

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 160,

            child: SizedBox(
              width: 230,
              height: 230,
              child: CircleAvatar(
                backgroundColor: Color(0XFF407DD8),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF0F469A),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Your Score  \n ${widget.correctAnswers}/${6}",
                      style: TextStyle(color: Colors.white,fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 460,
              child: Text("Congratulation",style: TextStyle(color: Color(0xFF0F469A),fontSize: 30),)),
          
          Positioned(
              bottom: 420,
              child: Text("Great job,Rumi Aktar! Tou Did it",style: TextStyle(color: Color(0xFF0F469A),fontSize: 22),)),
        
        Positioned(
          bottom: 130,
          child: Container(
            alignment: Alignment.center,
            width: 400,
            height: 60,
            decoration: BoxDecoration(color: Color(0xFF0F469A),borderRadius: BorderRadius.circular(5)),
            child: Text("Share",style: TextStyle(color: Colors.white,fontSize: 23),),
          ),
        ), Positioned(
            bottom: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
              child: Container(
                alignment: Alignment.center,
                width: 400,
                height: 60,
                decoration: BoxDecoration(color: Color(0xFF0F469A),borderRadius: BorderRadius.circular(5)),
                child: Text("Back to Home",style: TextStyle(color: Colors.white,fontSize: 23),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
