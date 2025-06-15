import 'dart:convert';

import 'package:cinemax/models/detiles_model.dart';

class CategoryModel {
  final String category;
  final String categoryImage;
  final List<QuestionModel> questions;

  CategoryModel({
    required this.category,
    required this.categoryImage,
    required this.questions,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json){
    return CategoryModel(category: json["category"],
      categoryImage: json["category_image"],
      questions: (json["questions"] as List<Map<String, dynamic>>)
          .map((question) => QuestionModel.fromJson(question),)
          .toList(),
    );
  }
}
