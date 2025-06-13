import 'package:cinemax/models/product_model.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final CategoryModel category;

  const QuestionPage({super.key, required this.category});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
          Row(
              children: [
          Hero(tag: widget.category.categoryImage, child: Image.network(widget.category.categoryImage,))
      ],
    ),)
    ,
    );
  }
}
