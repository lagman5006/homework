import 'package:flutter/foundation.dart';

class QuestionModel {
  final int id;
  final String title;
  final int correctAnswer;
  final List<String> answers;

  QuestionModel({
    required this.id,
    required this.title,
    required this.correctAnswer,
    required this.answers,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json){
    return QuestionModel(id: json["id"],
        title: json["title"],
        correctAnswer: json["correct_answer"],
        answers: json["answers"]);
  }
}

