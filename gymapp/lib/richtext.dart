import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.black, fontFamily: 'Koulen', fontSize: 50),
          headlineSmall: TextStyle(color: Colors.black, fontFamily: 'poppins'),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  inccounter(bool msg){
    dynamic num=0;
    if(msg==true){
      num++;
    }
  }

  @override
  Widget build(BuildContext context) {
    var arraycolors=[
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.blue,

    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      // body: GridView.count(crossAxisCount: 4,
      // mainAxisSpacing: 11,
      // crossAxisSpacing: 11,
      // children: [
      //   Container(color: arraycolors[0]),
      //   Container(color: arraycolors[1]),
      //   Container(color: arraycolors[2]),
      //   Container(color: arraycolors[3]),
      //   Container(color: arraycolors[4]),
      //   Container(color: arraycolors[5]),
      //   Container(color: arraycolors[6]),
      //   Container(color: arraycolors[7]),
      // ],),

      // body: GridView.extent(maxCrossAxisExtent:  100,
      // mainAxisSpacing: 11,
      // crossAxisSpacing: 11,
      // children: [
      //   Container(color: arraycolors[0]),
      //     Container(color: arraycolors[1]),
      //     Container(color: arraycolors[2]),
      //     Container(color: arraycolors[3]),
      //     Container(color: arraycolors[4]),
      //     Container(color: arraycolors[5]),
      //     Container(color: arraycolors[6]),
      //     Container(color: arraycolors[7]),
      //
      // ],),


      body: RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.headlineMedium,
              children: [
                TextSpan(text: 'Nimit'),
                TextSpan(text: 'Shekhawat',
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Koulen',
                        fontSize: 40
                    ))
              ]
          )
      ),




    );
  }
}
