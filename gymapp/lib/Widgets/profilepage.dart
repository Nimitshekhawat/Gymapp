

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.black, fontFamily: 'Koulen', fontSize: 20),
          headlineSmall: TextStyle(color: Colors.black, fontFamily: 'poppins'),
        ),
        primarySwatch: Colors.blue,
      ),
      home: profilepage(),
    );
  }
}

class profilepage extends StatefulWidget{
  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page',
          style: TextStyle(fontFamily: 'Koulen', fontSize: 24,),),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,

                ),
                child:Image.asset('assets/images/john.png')
            ),



            )
          ],
        ),
      ),
    );
  }
}
