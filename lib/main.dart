import 'package:flutter/material.dart';
import 'package:kidslearinng/Quizzler.dart';
import 'Home.dart';
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
        title: new Text('Games'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
        body: Center(
          child: Row(
            children: [
               Expanded(
                 child: ReusableCard(
                 colour: Color(0xFF111328),
                 cardChild: Text("اللعبة الاولى", style: TextStyle( color: Colors.white, fontSize: 50.0,
                   fontWeight: FontWeight.w900,

                     ),
                   textAlign: TextAlign.center,
                 ),
             onPress: (){
                   var router = new MaterialPageRoute(
      builder: (BuildContext context)=> Home());
       Navigator.of(context).push(router);

    },

              ),
               ),
              Expanded(
                child: ReusableCard(

                  colour: Color(0xFF111328),
                  cardChild: Text("اللعبة التانية", style: TextStyle( color: Colors.white,fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                    textAlign: TextAlign.center,
                  ),

                  onPress: (){
                    var router = new MaterialPageRoute(
                        builder: (BuildContext context)=> Quizzler());
                    Navigator.of(context).push(router);

                  },

                ),
              ),
            ],
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
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
