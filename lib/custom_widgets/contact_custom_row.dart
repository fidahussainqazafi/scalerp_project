import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';

class ContactRow extends StatelessWidget {
   final String text;
   final TextStyle textStyle;
   final SizedBox sizedBox;

  const ContactRow({Key? key,
    required this.text, required this.textStyle,required this.sizedBox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        Icon(Icons.account_circle_outlined,size: 13.sp,weight: 13,color: Color(0xffD6D6D6),),
        SizedBox(width: 4.w),
        Text(text,style: textStyle),
        sizedBox,
        Icon(Icons.call,size: 15.sp,color: Color(0xffD6D6D6),),
        SizedBox(width: 4.w,),
        Text('(05 000 000 00)',style: textStyle,),

      ],

    );
  }
}
