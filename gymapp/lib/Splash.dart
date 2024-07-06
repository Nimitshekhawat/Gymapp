import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gymapp/main.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<Splash> {
  List<String> splashImages = [
    'assets/images/Splash/splash1.png',
    'assets/images/Splash/splash2.png',
    'assets/images/Splash/splash3.png',
  ];

  int _currentImageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Start showing images with intervals
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (_currentImageIndex <  splashImages.length - 1) {
          _currentImageIndex++;
        } else {
          // Stop the timer when all images have been shown
          timer.cancel();
          // Navigate to MyHomePage after a delay
          _navigateToHomePage();
        }
      });
    });
  }

  void _navigateToHomePage() {
    Future.delayed(Duration(milliseconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing the state
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashImages[_currentImageIndex]),
            fit: BoxFit.cover,

          ),
        ),
      )
    );
  }
}
