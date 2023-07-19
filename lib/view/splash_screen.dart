import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/images.dart';
import 'package:scalerp/view/slider1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SliderScreen()),
      );
      //Get.to(()=>Splash3());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              splash3,
            ),
            Positioned(
              bottom: 100.0,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(10.0),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(mainColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
