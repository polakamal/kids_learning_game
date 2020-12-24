import 'package:flutter/cupertino.dart';

class Question {
  AssetImage questionimage;
  bool questionAnswer;
  String choiceone ;
  String choicetwo;

  Question(AssetImage q, bool a,String c1, String c2 ) {
    questionimage= q;
    questionAnswer = a;
    choiceone = c1 ;
    choicetwo = c2 ;
  }
}
