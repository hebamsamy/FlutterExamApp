import 'package:examapp/QuestionBank.dart';
import 'package:examapp/components/optionCard.dart';
import 'package:examapp/components/questionCard.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // AudioCache audioCache = AudioCache();
  int result = 0;
  List<Text> ScoreKeeper = [];
  var nowBank = Bank();

  void Check(bool val) {
    final player = AudioCache();
    setState(() {
      if (val == nowBank.GetCurrentQuestionAnswer()) {
        result++;
        ScoreKeeper.add(Text("Pravo"));
        player.play('right.mp3');
      } else {
        ScoreKeeper.add(Text("Soo bad!!"));
        player.play('wrong.mp3');
        // result--;
      }
    });
    nowBank.Increment();
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
            currentText: nowBank.GetCurrentQuestionText(),
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
