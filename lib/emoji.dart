
import 'package:flutter/material.dart';

class emoji {
  int _num = 0;
  final Map<String, String> choices = {
    '🦁': ' حرف الالف',
    '🐼': 'حرف الباء',
    '🐪': 'حرف الجيم',
    '🍎': 'حرف التاء',
    '🐵': 'حرف القاف',
    '🐯': 'حرف النون',
    '🌳': 'حرف الشين',
    '🤚': 'حرف الياء'
  };
 void next_Question()
 {
   if(_num < choices.length - 1)
   {
     _num ++ ;

   }

 }
  Map<String, String> get_emoji()
{
  return choices;

}
bool is_finished()
  {
  if(_num >= choices.length-1)
  {
    return true;
  }
  else return false;

  }
  void reset()
  {
    _num = 0;

  }

}