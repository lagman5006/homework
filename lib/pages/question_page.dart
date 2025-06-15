import 'package:cinemax/models/detiles_model.dart';
import 'package:cinemax/models/product_model.dart';
import 'package:cinemax/pages/score_page.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final CategoryModel category;

  const QuestionPage({super.key, required this.category});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int correctAnswers = 0;
  int wrongAnswers = 0;
  PageController pageController = PageController();
  int? _value;
  late List<int?> selectedValues;

  @override
  void initState() {
    super.initState();
    selectedValues = List.generate(
      widget.category.questions.length,
      (index) => null,
    );
    _value = null;

    pageController.addListener(() {
      if (pageController.page != null) {
        final int currentPage = pageController.page!.round();
        setState(() {
          _value = selectedValues[currentPage];
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(width: 70),
            Column(
              children: [
                Text(widget.category.category, style: TextStyle(fontSize: 18)),
                Text("30 Question", style: TextStyle(fontSize: 18)),
              ],
            ),
            Spacer(),
            Hero(
              tag: widget.category.categoryImage,
              child: Image.network(
                widget.category.categoryImage,
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              controller: pageController,
              itemCount: widget.category.questions.length,
              itemBuilder: (context, index) {
                final QuestionModel question = widget.category.questions[index];
                return Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Question:${index + 1}/${question.id}"),
                            Spacer(),
                            Text("Quit", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(question.title),
                        SizedBox(height: 10),
                        for (String q in question.answers)
                          ChoiceChip(
                            backgroundColor: Colors.white,
                            showCheckmark: false,
                            onSelected: (value) {
                              if (value) {
                                setState(() {
                                  selectedValues[index] = question.answers
                                      .indexOf(q);
                                  _value = selectedValues[index];


                                  if (_value == question.correctAnswer) {
                                    correctAnswers++;
                                  } else {
                                    wrongAnswers++;
                                  }
                                });
                              }
                            },

                            label: SizedBox(
                              width: double.infinity,
                              child: Text(
                                q,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _value == question.answers.indexOf(q)
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            selected: _value == question.answers.indexOf(q),
                            selectedColor: Color(0xFF0F469A),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0F469A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        "Previous",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final int currentPage = pageController.page!.round();
                    final int? selectedAnswer = selectedValues[currentPage];


                      if (selectedAnswer == widget.category.questions[currentPage].correctAnswer) {
                        correctAnswers++;
                      } else {
                        wrongAnswers++;


                      selectedValues[currentPage] = selectedAnswer;
                    }

                    if (currentPage == widget.category.questions.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScorePage(
                            correctAnswers: correctAnswers,
                            wrongAnswers: wrongAnswers,
                          ),
                        ),
                      );
                    } else {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear,
                      );
                    }
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0F469A),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
