import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/const.dart';

class RowWithIconAndTextField extends StatelessWidget {
  final Color iconColor;
  final String text;
  final TextStyle textStyle;
  final String textFieldText;

  const RowWithIconAndTextField({
    required this.iconColor,
    required this.text,
    required this.textStyle,
    required this.textFieldText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16.w,
          height: 16.h,
          decoration: BoxDecoration(
            color: iconColor, // Replace with desired color
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 16.w),
        Container(
          width: 215.h,
          height: 24.h,
          color: mainColor, // Replace with desired color
          child: Text(
            text,
            style: textStyle,
          ),
        ),
        SizedBox(width: 16.w),
        Container(
          width: 80.w,
          height: 24.h,
          child: Text(textFieldText,
            style: textStyle,


            ),
          ),
      ],
    );
  }
}
