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
                Container(


                  // height:SizeConfig.safeBlockVertical * 10,
                  // color: Colors.red,
                    height: 150,
                    child: Image(image: AssetImage('assets/bar2.jpg'))
                ),



                Container(
                  height: 400,
                  width: 300,
                  //color:Colors.white,
                  child: FlatButton(
                      onPressed: () {
                        flag=0;

                        //    final player = AudioCache();
                        // final we=AudioPlayer();

                        audioCache.play('$number.mp3');
                        // player2.play('s$number.mp3',isLocal: true);

                        setState(){
                          isplay=true;
                        }





                      }, /*color:Colors.red,*/
                      child:
                      Image(image: AssetImage('assets/$number.jpg'))
                  ),),


                Container(
                  width: 300,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                  //color: Colors.white,
                  child: Center(child: Row(children: <Widget>[
                    Container(

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
                    SizedBox(width: 35),
                    Container(

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

                  )
                  ),

                ),













              ],

            ),
          ),
        ),
      ),
    );
  }
}
