import 'package:flutter/material.dart';
import 'package:scalerp/conts/colors.dart';
import '../conts/images.dart';

class ProductSquareWidget extends StatelessWidget {




  const ProductSquareWidget({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 174,
          height: 203,
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 9),
              Image.asset(
                imBox,
                height: 146,
                width: 157,
              ),
              SizedBox(height: 5),
              Text('Lorem ipsum,or lipsum as...',style:
              TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.w700),),
              SizedBox(height: 2),
              Row(
                children: [
                  Text('1 252 00 DH',
                    style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.w700),),
                  SizedBox(width: 45),
                  Text('50',
                    style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.w700),),
                  SizedBox(width: 6),
                  Image.asset(
                    imCube,
                    width: 22,
                    height: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
