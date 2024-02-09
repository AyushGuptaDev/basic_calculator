import 'dart:async';
import 'package:flutter/material.dart';
import 'package:calculater_2digit/main.dart';

class Splash_Screen extends StatefulWidget{
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calculation_Page()
      )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: const Center(
          child:  Text("CALCULATOR",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}
