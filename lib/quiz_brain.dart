import 'dart:ui';

import 'package:flutter/painting.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(AssetImage('images/gog.png'), false , 'أ','ك' ),
    Question(AssetImage('images/elephant.png'), true, 'ف','ى'),
    Question(AssetImage('images/erd.png'), false, 'ف','ق'),
    Question(AssetImage('images/Lion-Cartoon.png'), true, 'أ','ت'),
    Question(AssetImage('images/cat.png'), true, 'ق','ك'),
    Question(AssetImage('images/boma.png'), false, 'م','ب'),
    Question(AssetImage('images/zrafa.png'), true, 'ز','ل'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length -1) {
      _questionNumber++;
    }
  }

  AssetImage getQuestionimage() {
    return _questionBank[_questionNumber].questionimage;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  String getChoiceOne(){
    return _questionBank[_questionNumber].choiceone;
  }
  String getChoiceTwo(){
    return _questionBank[_questionNumber].choicetwo;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length-1 ) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
