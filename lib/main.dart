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
      body: new Column(
        children: [
             Center(
              child : FlatButton(
             textColor: Colors.white,
             color: Colors.blueGrey,
               child: Text(
              "اللعبة الأولى",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40.0,
              ),
              ),
              onPressed: () {
              var router = new MaterialPageRoute(
                builder: (BuildContext context)=> Home());
              Navigator.of(context).push(router);
              //The user picked true.
             },
              )),
          Center(
               child : FlatButton(
              textColor: Colors.white,
              color: Colors.blueGrey,
              child: Text(
              "اللعبة الثانية",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40.0,
              ),
              ),
              onPressed: (){
              var router = new MaterialPageRoute(
               builder: (BuildContext context)=> Quizzler());
              Navigator.of(context).push(router);
               },
          ),
    )
           ],
      ),
    );
  }
}
