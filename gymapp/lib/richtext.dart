import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gymapp/Widgets/Orangebtn.dart';



class Temprory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return tempState();
  }

}
class tempState extends State<Temprory>{



  Map<int, Color> Colorsmap = {
    0: Colors.white,
    1: Colors.red,
    2: Colors.blue,
    3: Colors.green,
  };
  void changecolor(int value){
    setState(() {
     rang= value;
    });
  }

  late int rang; // Assigning the color from Colorsmap to rang

   @override
  void initState() {
    super.initState();
    rang= 0;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull widget'),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colorsmap[rang],
        child: Center(
          child: Container(
            height: 400,
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Orangebtn(btnname: 'red',
                  color: Colorsmap[rang],
                  textStyle: TextStyle(fontFamily: 'Koulen',fontSize: 40),
                  callback: (){
                    changecolor(1);
                },),
                Orangebtn(btnname: 'blue',
                  color: Colorsmap[rang],
                  textStyle: TextStyle(fontFamily: 'Koulen',fontSize: 40),
                  callback: (){
                    changecolor(2);
                  },),

                Orangebtn(btnname: 'green',

                  textStyle: TextStyle(fontFamily: 'Koulen',fontSize: 40),
                  callback: (){
                    changecolor(3);
                  },
                  color: Colorsmap[rang],),
              ],
            ),
          ),
        ),
      ),

    );
  }

}