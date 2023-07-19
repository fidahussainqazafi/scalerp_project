import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/const.dart';

class TreeCustomWidget extends StatelessWidget {

  final  String image;
  final String text;
  final Color containerColor;
  final double borderRadius;
  final double? width;

  const TreeCustomWidget({Key? key,
    required this.image, required this.text, required this.containerColor,required this.borderRadius, this.width = 360}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width  : width,
      height: 79.h,

      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),

      child: Row(

        children: [
          SizedBox(width: 15.w,),

          Column(
            children: [
              SizedBox(height: 18.h),
              Image.asset(image,width: 57.5.w,height: 53.2.h,),
            ],
          ),
          SizedBox(width: 26.w),
          Column(
            children: [
              SizedBox(height: 17.h),
              Text('\$2.22 x 4',style: TextStyle(color: mainColor,fontSize: 12,fontWeight: FontWeight.w500),),
              SizedBox(height: 2.h),
              Text(text,style: broccoliTextStyle(),),
              SizedBox(height: 2.h),
              Text('1.50 lbs',style: lbsTextStyle(),),
            ],
          ),
          SizedBox(width: 140.w),

          Column(
            children: [
              SizedBox(height: 5.h),
              Text('+',style: TextStyle(color: mainColor,fontSize: 20.sp),),
              SizedBox(height: 2.h),
              Text('5',style: TextStyle(color: mainColor,fontSize: 20.sp),),
              SizedBox(height: 0.h),
              Text('-',style: TextStyle(color: mainColor,fontSize: 20.sp,fontWeight: FontWeight.w700)),

            ],

          ),



        ],
      ),


    );
  }
}
