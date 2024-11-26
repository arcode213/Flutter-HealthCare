

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath_care/main.dart';

class DetailComponent extends StatelessWidget {
  final String exercise_img;
  final String exercise_img1;
  final String exercise_name;
  final String exercise_details;
  final Color color;



  const DetailComponent({
    super.key,
    required this.exercise_details,
    required this.exercise_img,
    required this.exercise_name,
    required this.exercise_img1,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.r)
              ),
              height: 90.h,
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 60.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: color
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                         
                          color: Colors.white,
                          shape: BoxShape.circle,
                         
                        ),
                        child: Center(child: Image.asset(exercise_img,height: 25.h,width: 25.w,)),
                      ),
                      SizedBox(width: 20.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(exercise_name,
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.grey
                          ),),
                          SizedBox(height: 5.h,),
                          Row(
                            children: [
                              Text(exercise_details,
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.black
                          ),),
                          SizedBox(width: 4.w,),
                          Text("+2%",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.green
                          ),),
                          //Spacer(),
                            ],
                          ),
                          
                        ],
                      ),
                      Spacer(),
                          Image.asset(exercise_img1),
                          SizedBox(width: 5.w,)
                ],
              ),
            );
  }
}