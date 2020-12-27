import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'emoji.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
emoji emojis = emoji();
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Map<String,bool>Score= {};
  final Map<String,String>choices = emojis.get_emoji();
  int index =0;
  int urscore=0;
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(urscore.toString()+ '/' +choices.length.toString()),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:  AssetImage('assets/backround1.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: choices.keys.map((element) {
                  return Expanded(
                    flex: 1,
                    child: Draggable<String>(
                      data: element,
                      child: Movable(Score[element] ==true ? '✔️': element ),
                      feedback: Movable(element),
                      childWhenDragging: null,

                    ),
                  );
                }).toList(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: choices.keys.map((element){
                  return buildTarget(element);

                }).toList()..shuffle(Random(index)),
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget buildTarget(element){
    return DragTarget<String>(
      builder: (context ,incoming,rejected)
      {
        if(Score[element]==true)
        {

          return Container(
            color: Colors.white,
            child: Text('اجابة صحيحة'),
            alignment: Alignment.center,
            height: 50,
            width: 200,
          );
        }else
        {
          return Container(
            color: Colors.green[50],
            child: Text(choices[element]) ,
            alignment: Alignment.center,
            height: 50,
            width: 200,);
        }

      },
      onWillAccept: (data)=> data== element ,
      onAccept: (data)
      { setState(() {
        if(emojis.is_finished()==true)
        {
          Alert(
            context: context,
            title: 'تهانينا!',
            desc: 'لقد انتهيت من الاختبار',
          ).show();
          emojis.reset();
          Score.clear();
          urscore=0;
          index++;
        }else
        {
          player.play('applause8.wav');
          emojis.next_Question();
          Score[element]= true;
          urscore++;
        }

      });


      } ,
      onLeave:(data) {},
    );

  }
}
class Movable extends StatelessWidget {
  final String emoji;
  Movable(this.emoji);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          padding: EdgeInsets.all(5),
          child: Text(emoji, style: TextStyle(color: Colors.black,fontSize: 40)) ,
        ));
  }
}




