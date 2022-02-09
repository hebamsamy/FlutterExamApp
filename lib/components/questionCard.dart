import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String currentText;
  QuestionCard({required this.currentText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          currentText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
