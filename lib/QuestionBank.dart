class Bank {
  List<Question> Qlist = [
    Question(questionText: "is cats an animal?", questionAnswer: true),
    Question(questionText: "is rat an food?", questionAnswer: false),
    Question(questionText: "is apple an animal?", questionAnswer: false),
    Question(questionText: "is lion an animal?", questionAnswer: true),
    Question(questionText: "is table an animal?", questionAnswer: false),
  ];
  int currentQuNum = 0;
  String GetCurrentQuestionText() {
    return Qlist[currentQuNum].questionText;
  }

  bool GetCurrentQuestionAnswer() {
    return Qlist[currentQuNum].questionAnswer;
  }

  void Increment() {
    if (currentQuNum < Qlist.length - 1) {
      currentQuNum++;
    } else {
      currentQuNum = 0;
    }
  }
}

class Question {
  String questionText;
  bool questionAnswer;
  Question({required this.questionText, required this.questionAnswer});
}
