import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class ta3lm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ta3lm> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();

  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);



  }




  int number =1;
  int flag=0;
  // final player = AudioCache();
  //final player2=AudioPlayer();
  bool isplay;
  @override
  Widget build(BuildContext context) {
    //final data=MediaQuery.of(context);
    //SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text('تعليم اللغة العربية'), centerTitle: true,

        ),
        //backgroundColor: Image.asset('assets/images/back.png').color,

        //  backgroundColor: Colors.yellow,
        body:  Center(

          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:  AssetImage('assets/backround1.jpg'),
                    fit: BoxFit.cover)
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //DecorationPosition.background
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(


                      // height:SizeConfig.safeBlockVertical * 10,
                      // color: Colors.red,

                        child: Image(image: AssetImage('assets/ew.jpeg'))
                    ),

                  ),),

                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                        onPressed: () {
                          flag=0;

                          //    final player = AudioCache();
                          // final we=AudioPlayer();

                          audioCache.play('$number.mp3');
                          // player2.play('s$number.mp3',isLocal: true);

                          /* setState(){
                          isplay=true;
                        }*/
                        },
                        child:
                        Image(image: AssetImage('assets/$number.jpg'))
                    ),

                  ),





                  /*color:Colors.red,*/

                ),

                Expanded(
                  child: Center(
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          Container(
                              width: 120,
                              height: 100,
                              margin:  EdgeInsets.only(left: 45),
                            // alignment: Alignment.center,
                            child: FlatButton(
                                onPressed: () {
                                  //advancedPlayer.stop();
                                  setState(() {
                                    flag=1;
                                    if(number!=1)
                                    {number--;}
                                    else
                                    {number=28;}

                                  });

                                }, /*color:Colors.white*/

                                child:Image(image: AssetImage('assets/play2.png'), )
                            ), //Image(image: AssetImage('assets/images/left.png'))
                          ),
                            SizedBox(width: 10),
                          Container(
                              width: 120,
                              height: 100,
                              margin:  EdgeInsets.only(right: 45),
                            // alignment: Alignment.center,
                              child: FlatButton(
                                  onPressed: () {
                                    //final we=AudioPlayer() ;
                                    //we.stop();
                                    // player
                                    advancedPlayer.stop();
                                    setState(() {
                                      flag=1;
                                      if(number!=28)

                                      {number++;}
                                      else
                                      {number=1;}

                                    });

                                  }, /*color:Colors.white*/
                                  child:
                                  Image(image: AssetImage('assets/play.png')))),
                       ]

                    ),
                  ),
                )












              ],

            ),
          ),
        ),
      ),
    );
  }
}
