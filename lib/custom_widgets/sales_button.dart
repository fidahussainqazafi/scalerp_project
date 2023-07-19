import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../conts/colors.dart';
import '../conts/style.dart';

class SalesButton extends StatelessWidget {
  final String buttonText;
  final String text;
  final String image;

  const SalesButton({
    required this.buttonText,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149.w,
      height: 66.h,
      child: Stack(
        children: [
          Container(
            width: 135.w,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 11.h, right: 25.w), // Added padding
                  child: Text(
                    buttonText,
                    style: noOfSaleTextStyle(),
                  ),
                ),
                SizedBox(height: 2.h), // Increased space
                Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 5.w), // Added padding
                  child: SizedBox(
                    height: 17.22.h,
                    width: 97.w,
                    child: Text(text),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 190.w,
            alignment: Alignment.centerRight,
            child: Image.asset(
              image,
              width: 54.w,
              height: 53.h,
            ),
          ),
        ],
      ),
    );
  }
}
