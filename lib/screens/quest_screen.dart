import 'package:devoir1/brain/compute_score.dart';
import 'package:devoir1/brain/get_score_color.dart';
import 'package:devoir1/brain/get_score_message.dart';
import 'package:devoir1/data/quizzes_list.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import 'score_screen.dart';
import '../data/quizzes_list.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({Key? key}) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  late int indexQuestion;
  late int indexReponse;
  var colorSelect1 = unselectedQuestionColor;
  var colorSelect2 = unselectedQuestionColor;
  var colorSelect3 = unselectedQuestionColor;
  var colorSelect4 = unselectedQuestionColor;
  @override
  void initState() {
    indexQuestion = 0;
    indexReponse = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Quiz'),
          backgroundColor: backgroundColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  //height: 15,
                  //color: Colors.red,
                  children: [
                    Text(
                      "${indexQuestion + 1} - " +
                          AllQuizzes[indexQuestion].question,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    //SizedBox(height: 10),
                    const Divider(
                      height: 30,
                      color: Colors.white,
                      thickness: 2,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            colorSelect1 = selectedQuestionColor;
                            colorSelect2 = unselectedQuestionColor;
                            colorSelect3 = unselectedQuestionColor;
                            colorSelect4 = unselectedQuestionColor;
                          },
                        );
                        //ReponseChoix(indexQuestion, indexReponse);
                      },
                      child: Container(
                        height: 80,
                        //width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorSelect1,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: selectedQuestionColor,
                                shape: BoxShape.circle,
                              ),
                              child: TextButton(
                                onPressed: null,
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: const Text("A"),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[0],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            colorSelect1 = unselectedQuestionColor;
                            colorSelect2 = selectedQuestionColor;
                            colorSelect3 = unselectedQuestionColor;
                            colorSelect4 = unselectedQuestionColor;
                          },
                        );
                        //ReponseChoix(indexQuestion, indexReponse);
                      },
                      child: Container(
                        height: 80,
                        //width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorSelect2,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: selectedQuestionColor,
                                shape: BoxShape.circle,
                              ),
                              child: TextButton(
                                onPressed: null,
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: const Text("B"),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[1],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            colorSelect1 = unselectedQuestionColor;
                            colorSelect2 = unselectedQuestionColor;
                            colorSelect3 = selectedQuestionColor;
                            colorSelect4 = unselectedQuestionColor;
                          },
                        );
                        //ReponseChoix(indexQuestion, indexReponse);
                      },
                      child: Container(
                        height: 80,
                        //width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorSelect3,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: selectedQuestionColor,
                                shape: BoxShape.circle,
                              ),
                              child: TextButton(
                                onPressed: null,
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: const Text("C"),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[2],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            colorSelect1 = unselectedQuestionColor;
                            colorSelect2 = unselectedQuestionColor;
                            colorSelect3 = unselectedQuestionColor;
                            colorSelect4 = selectedQuestionColor;
                          },
                        );
                      },
                      child: Container(
                        height: 80,
                        //width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: colorSelect4,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: selectedQuestionColor,
                                shape: BoxShape.circle,
                              ),
                              child: TextButton(
                                onPressed: null,
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: const Text("D"),
                              ),
                            ),
                            Flexible(
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  AllQuizzes[indexQuestion].possibleAnswers[3],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  //height: 15,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: selectedQuestionColor,
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (indexQuestion >= 5) {
                            if (colorSelect1 == selectedQuestionColor) {
                              ReponseChoix(indexQuestion, 0);
                            }
                            Color couleur = get_score_color(Score);
                            String message = get_score_message(Score);
                            double sco = Score;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScoreScreen(
                                  couleurValue: couleur,
                                  messageValue: message,
                                  scoreValue: (sco * 100),
                                ),
                              ),
                            );
                            indexQuestion = 0;
                            Score = 0;
                            colorSelect1 = unselectedQuestionColor;
                            colorSelect2 = unselectedQuestionColor;
                            colorSelect3 = unselectedQuestionColor;
                            colorSelect4 = unselectedQuestionColor;
                          } else {
                            if (colorSelect1 == selectedQuestionColor) {
                              ReponseChoix(indexQuestion, 0);
                            }
                            if (colorSelect2 == selectedQuestionColor) {
                              ReponseChoix(indexQuestion, 1);
                            }
                            if (colorSelect3 == selectedQuestionColor) {
                              ReponseChoix(indexQuestion, 2);
                            }
                            if (colorSelect4 == selectedQuestionColor) {
                              ReponseChoix(indexQuestion, 3);
                            }

                            indexQuestion += 1;

                            colorSelect1 = unselectedQuestionColor;
                            colorSelect2 = unselectedQuestionColor;
                            colorSelect3 = unselectedQuestionColor;
                            colorSelect4 = unselectedQuestionColor;
                          }
                        },
                      );
                    },
                    child: const Text(
                      "SUIVANT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
