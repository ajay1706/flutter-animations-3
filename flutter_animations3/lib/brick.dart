import 'package:flutter/material.dart';
import 'dart:math' as math;


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
      duration: Duration(seconds:3 ),
     );

     tween = Tween( begin:0.0 , end: 1.0 );
     animationController.repeat();
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
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
              AnimatedBrick(animations: [animOne,animTwo],controller: animationController,marginLeft: 0,alignment: Alignment.centerLeft,isClockwise: true,),
              AnimatedBrick(animations: [animThree,animEight],controller: animationController,marginLeft: 0,isClockwise: false,),
              AnimatedBrick(animations: [animFour,animSeven],controller: animationController,marginLeft: 30,isClockwise: true,),
              AnimatedBrick(animations: [animFive,animSix],controller: animationController,marginLeft: 30,isClockwise: false,),
         
            ],
          ),
    
        ),
      ),
    );
  }
}


class AnimatedBrick extends AnimatedWidget{
final AnimationController controller;
final List<Animation> animations;
final double marginLeft;
final Alignment alignment;
final bool isClockwise;

AnimatedBrick(  {
Key key,
this.controller,
this.animations,
this.marginLeft,
this.alignment = Alignment.centerRight,
this.isClockwise
}) : super(key:key,listenable:controller);

Matrix4 cloclWise(animation) => Matrix4.rotationZ(animation.value * math.pi*2.0 * 0.5);

Matrix4 antiClockwise(animation) => Matrix4.rotationZ(-(animation.value * math.pi*2.0 * 0.5));


  @override
  Widget build(BuildContext context) {

    var firstTransformation,secondTransformation;
    
    if(isClockwise){
        firstTransformation = cloclWise(animations[0]);
    secondTransformation = cloclWise(animations[1]);
    }
    else{
        firstTransformation = antiClockwise(animations[0]);
    secondTransformation = antiClockwise(animations[1]);
    }
  

    // TODO: implement build
    return Transform(
      transform: firstTransformation,
      alignment: alignment,
      
      child: Transform(
        transform: secondTransformation,
        alignment: alignment,
        child: Brick(marginLeft: marginLeft,)));
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
                      gradient:LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.yellow
                        ]
                      ) , 

  
),  );
  }
}