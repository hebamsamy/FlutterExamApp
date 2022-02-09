import 'dart:async';

import 'package:examapp/components/optionCard.dart';
import 'package:examapp/components/questionCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String QU1 = "Is Cat an animal?";
  bool ans1 = true;
  int result = 0;
  List<Text> ScoreKeeper = [];
  void Check(bool val) {
    setState(() {
      if (val == ans1) {
        result++;
        ScoreKeeper.add(Text("Pravo"));
      } else {
        ScoreKeeper.add(Text("Soo bad!!"));
        result--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 10, 50),
      appBar: AppBar(
        title: Row(
          children: [
            Text("Exam Started"),
            Container(
              child: Text("Your Score is $result"),
              color: Colors.amber,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuestionCard(
            currentText: QU1,
          ),
          Row(
            children: [
              OptionCard(
                optionText: "true",
                optionColor: Colors.green,
                handleOnPress: () {
                  Check(true);
                },
              ),
              OptionCard(
                optionText: "false",
                optionColor: Colors.red,
                handleOnPress: () {
                  Check(false);
                },
              ),
            ],
          ),
          Row(
            children: ScoreKeeper,
          ),
        ],
      ),
    );
  }
}
