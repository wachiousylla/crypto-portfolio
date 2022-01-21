import 'package:flutter/material.dart';
import '../color.dart';

class ScoreScreen extends StatelessWidget {
  final Color couleurValue;
  final String messageValue;
  final double scoreValue;
  const ScoreScreen({
    Key? key,
    required this.couleurValue,
    required this.messageValue,
    required this.scoreValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quiz'),
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30.0),
        child: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: unselectedQuestionColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/congrats.png"),
                      const Text(
                        "Félicitations !!",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        scoreValue.toStringAsFixed(2),
                        style: TextStyle(
                          color: couleurValue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        messageValue,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
