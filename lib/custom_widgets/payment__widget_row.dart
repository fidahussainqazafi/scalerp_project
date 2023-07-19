import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
class PaymentRow extends StatelessWidget {
  final String text;
  const PaymentRow({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12.w),
        Text(payement,style: dashBoardTextStyle(),),
        SizedBox(width: 90.w),
        Text(amount,style: dashBoardTextStyle(),),
        SizedBox(width: 30.w),
        Text('15 200,00 DH',style: TextStyle(color: whiteColor,
            fontSize: 18,fontWeight: FontWeight.w600),)
      ],
    );
  }
}
