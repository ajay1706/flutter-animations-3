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
          child: Container(
            height:10.0,
            width: 40.0, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
                      color: Colors.yellow, 

  
),  ),
        ),
      ),
    );
  }
}