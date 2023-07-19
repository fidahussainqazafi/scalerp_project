import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class DescriptionWidget extends StatelessWidget {
  final String text1;

  const DescriptionWidget({Key? key, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              text1,
              style: tittleTextStyle()
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
              border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
