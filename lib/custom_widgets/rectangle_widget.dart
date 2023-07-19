import 'package:flutter/material.dart';
import 'package:scalerp/conts/colors.dart';
import '../conts/images.dart';

class RectangleWidget extends StatelessWidget {
  
  final String text1;
  final TextStyle? textStyle1;
  final Color containerColor;

  const RectangleWidget({
    Key? key,

    required this.text1,
    this.textStyle1,
    this.containerColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 68,
      color: containerColor,
      child: Row(
        children: [
          SizedBox(width: 16),
          Image.asset(imBox),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              text1,
              style: textStyle1 ?? TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 15,
                letterSpacing: -0.25,
                //textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 10),
              Text(
                '1 252 00 DH',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('50', style: TextStyle(color: whiteColor)),
                  SizedBox(width: 6),
                  Image.asset(imCube, width: 22, height: 22),
                ],
              ),
            ],
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
