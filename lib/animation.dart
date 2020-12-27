import 'package:flutter/material.dart';
import 'ta3lm.dart';


class animate extends PageRouteBuilder
{
  final page;
  animate({this.page})
  :  super(
  pageBuilder:(context,animation,animationtwo)=>page,
    transitionsBuilder:(context,animation,animationtwo,child)
    {
      var begin =0.0;
      var end =1.0;
      var tween= Tween(begin:begin,end:end);
      var curvesanimation=CurvedAnimation(parent:animation, curve:Curves.linearToEaseOut);
      return ScaleTransition(
          scale:tween.animate(curvesanimation),
          child:RotationTransition(turns: tween.animate(curvesanimation),child: child));


    });
}