import 'dart:async';

import 'package:api_exem_advance/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';

class SplehScree extends StatefulWidget {
  const SplehScree({super.key});

  @override
  State<SplehScree> createState() => _SplehScreeState();
}

class _SplehScreeState extends State<SplehScree> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffae1232),
                  Color(0xff430d36),
                ],
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/image/img1.png"),
                width: 150,
                height: 150,color: Colors.white,
              ),
              Center(
                child: Text("Quotes App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
