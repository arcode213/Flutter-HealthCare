



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath_care/components/detail_component.dart';
import 'package:heath_care/components/pi_chart.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 180.h,
              child: PiChart(heart_percent: 33, water_percent: 33, step_percent: 33,),
            ),
            DetailComponent(color: Colors.purple,exercise_details: "1,289", exercise_img: "images/running_man.png", exercise_name: "Steps", exercise_img1: "images/icon1.png"),
            SizedBox(height: 10.h,),
            DetailComponent(color: Colors.green,exercise_details: "50 bpm", exercise_img: "images/heart.png", exercise_name: "Heart Rate", exercise_img1: "images/icon2.png"),
            SizedBox(height: 10.h,),
            DetailComponent(color: Colors.yellow,exercise_details: "1,345 ml", exercise_img: "images/drop.png", exercise_name: "Drink Water", exercise_img1: "images/icon3.png")
          ],
        ),
      ),
    );
  }
}