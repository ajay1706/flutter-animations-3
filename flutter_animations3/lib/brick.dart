import 'package:flutter/material.dart';


class BrickPage extends StatefulWidget {
  @override
  _BrickPageState createState() => _BrickPageState();
}

class _BrickPageState extends State<BrickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brick Animation"),
      ),
      body:  Container(
        color: Colors.black,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Brick(),
              Brick(),
              Brick(),
              Brick()
            ],
          ),
    
        ),
      ),
    );
  }
}


class Brick extends StatelessWidget {
  final double marginLeft;
  Brick({this.marginLeft =18.0});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(left: marginLeft),
            height:10.0,
            width: 40.0, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
                      color: Colors.yellow, 

  
),  );
  }
}