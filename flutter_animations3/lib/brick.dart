import 'package:flutter/material.dart';


class BrickPage extends StatefulWidget {
  @override
  _BrickPageState createState() => _BrickPageState();
}

class _BrickPageState extends State<BrickPage> with TickerProviderStateMixin{


AnimationController animationController;
Tween tween;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds:5 ),
     );

     tween = Tween( begin:0.0 , end: 1.0 );
  }


//Brick 1
  Animation get animOne => tween.animate(CurvedAnimation(  
curve: Interval(0.0, 0.125, curve: Curves.linear),
parent: animationController
  ));


  //Brick 2
    Animation get animTwo => tween.animate(CurvedAnimation(  
curve: Interval(0.125, 0.250, curve: Curves.linear),
parent: animationController
  ));


  //Brick 3
  Animation get animThree => tween.animate(CurvedAnimation(  
curve: Interval(0.25, 0.375, curve: Curves.linear),
parent: animationController
  ));


//Brick 4
  Animation get animFour => tween.animate(CurvedAnimation(  
curve: Interval(0.375, 0.5, curve: Curves.linear),
parent: animationController
  ));


  //Brick 5
  Animation get animFive => tween.animate(CurvedAnimation(  
curve: Interval(0.5, 0.625, curve: Curves.linear),
parent: animationController
  ));


  //Brick 6
    Animation get animSix => tween.animate(CurvedAnimation(  
curve: Interval(0.625, 0.750, curve: Curves.linear),
parent: animationController
  ));


  //Brick 7
  Animation get animSeven => tween.animate(CurvedAnimation(  
curve: Interval(0.75, 0.875, curve: Curves.linear),
parent: animationController
  ));


//Brick 8
  Animation get animEight => tween.animate(CurvedAnimation(  
curve: Interval(0.875, 1.0, curve: Curves.linear),
parent: animationController
  ));

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