import 'package:flutter/material.dart';
import 'package:kidslearinng/Quizzler.dart';
import 'Home.dart';
import 'ta3lm.dart';
import 'animation.dart';
void main() {
  runApp(new MaterialApp(
    home: new mainscreen(),
    theme: ThemeData.light().copyWith(
      primaryColor: Color(0xFF78909c),
      scaffoldBackgroundColor: Color(0xFF78909c),
    ),
  ));
}
class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}


class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('تعليم اللغة العربية'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body: Center(

          child:
      Container(
    constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
    image: DecorationImage(
    image:  AssetImage('assets/bar11.jpg'),
    fit: BoxFit.cover)
    ),
    child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Expanded(
                   child: ReusableCard(
                   colour: Colors.blue,
                   cardChild: Center(
                     child: Text("اللعبة الاولى", style: TextStyle( color: Colors.white, fontSize: 30.0,
                       fontWeight: FontWeight.w900,
                       shadows: [
                         Shadow(
                           blurRadius: 15.0,
                           color: Colors.black,
                           offset: Offset(7.0, 7.0),
                         ),
                       ],

                         ),
                       textAlign: TextAlign.center,
                     ),
                   ),
               onPress: (){
                    // var router = new MaterialPageRoute(
      //builder: (BuildContext context)=> Home());
       Navigator.of(context).push(_createRoute1());

    },

                ),
                 ),
                Expanded(
                  child: ReusableCard(

                    colour: Colors.blue,
                    cardChild: Center(
                      child: Text("اللعبة التانية", style: TextStyle( color: Colors.white,fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.black,
                            offset: Offset(7.0, 7.0),
                          ),
                        ],
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    onPress: (){
                      //var router = new MaterialPageRoute(
                      //    builder: (BuildContext context)=> Quizzler());
                      Navigator.of(context).push(_createRoute2());

                    },

                  ),
                ),
                Expanded(

                  child: ReusableCard(

                    colour: Colors.blue,
                    cardChild: Center(
                      child: Text("تعلم معنا", style: TextStyle( color: Colors.white,fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Colors.black,
                            offset: Offset(7.0, 7.0),
                          ),
                        ],
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    onPress: (){

                      Navigator.of(context).push(_createRoute3());

                    },

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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
Route _createRoute1() {
  return PageRouteBuilder(
      pageBuilder:(context,animation,animationtwo)=>Home(),
      transitionsBuilder:(context,animation,animationtwo,child)
      {
        var begin =0.0;
        var end =1.0;
        var tween= Tween(begin:begin,end:end);
        var curvesanimation=CurvedAnimation(parent:animation, curve:Curves.linearToEaseOut);
        return ScaleTransition(
            scale:tween.animate(curvesanimation),
            child:RotationTransition(turns: tween.animate(curvesanimation),child: child));


      }
  );
}
Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Quizzler(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute3() {
  return PageRouteBuilder(
      pageBuilder:(context,animation,animationtwo)=>ta3lm(),
      transitionsBuilder:(context,animation,animationtwo,child)
      {
        var begin =0.0;
        var end =1.0;
        var tween= Tween(begin:begin,end:end);
        var curvesanimation=CurvedAnimation(parent:animation, curve:Curves.linearToEaseOut);
        return ScaleTransition(
            scale:tween.animate(curvesanimation),
            child:RotationTransition(turns: tween.animate(curvesanimation),child: child));


      }
  );
}