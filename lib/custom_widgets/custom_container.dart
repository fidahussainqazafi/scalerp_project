import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
class CustomContainer extends StatelessWidget {
   final Image image;
   final String text;
   final width, height;
   final Color color;


  const CustomContainer({Key? key,
    required this.image,
    required this.text,
    this.width, this.height,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
      color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: color),
      ),
      child: Row(
        children: [
          SizedBox(width: 5.w),

          image,
          SizedBox(width: 5.w),
          Text(text,style: nTextStyle(),),
      ],
      ),
    );
  }
}
