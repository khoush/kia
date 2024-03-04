import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiatest/onboarding/onboarding_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroductionScreen(),
    );
  }
}

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingView()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bb.jpeg'), // Changer le chemin d'accès à votre image
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

