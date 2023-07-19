import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class InvoiceNo extends StatefulWidget {
  final String text;
  final Color color;
  final Color buttonColor;
  final String buttonText;

  const InvoiceNo({
    Key? key,
    required this.text,
    required this.color,
    required this.buttonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  InvoiceNoState createState() => InvoiceNoState();
}

class InvoiceNoState extends State<InvoiceNo> {
  bool showFourthRow = false;
  bool showContainer = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 357.w,
      height: showContainer ? 135.h : 160.h,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      duration: Duration(milliseconds: 300),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          Row(
            children: [
              SizedBox(width: 10.w),
              Text(
                widget.text,
                style: invoiceTextStyle(),
              ),
              SizedBox(width: 10.w),
              Text(
                '12-05-2023 15:30 23',
                style: dateTextStyle(),
              ),
              SizedBox(width: 20.w),
              Text(
                '1 252 00 DH',
                style: invoiceTextStyle(),
              ),
            ],
          ),

          Row(
            children: [
              SizedBox(width: 5.w),
              Icon(Icons.person, color: ligColor),
              Text(
                'Customer: client dffrf',
                style: custTextStyle(),
              ),
              SizedBox(width: 40.w),
              Text(
                '50',
                style: custTextStyle(),
              ),
              Image.asset(imCube, width: 20, height: 19, color: ligColor),
              SizedBox(width: 15.w),
              Text(
                'Paid amount     1 852 000 DH',
                style: custTextStyle(),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 5.w),
              Icon(Icons.location_on, color: ligColor,),
              SizedBox(width: 3.w),
              Text(
                'Location: scalerp MAROC',
                style: custTextStyle(),
              ),
              SizedBox(width: 20),
              IconButton(
                icon: Icon(showFourthRow ? Icons.arrow_drop_up : Icons.arrow_drop_down, size: 40),
                onPressed: () {
                  setState(() {
                    showFourthRow = !showFourthRow;
                    showContainer = !showFourthRow;
                  });
                },
              ),
              SizedBox(width: 50.w),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.buttonColor,
                  minimumSize: Size(26.w, 21.h),
                ),
                child: Text(widget.buttonText),
              ),
            ],
          ),

          if (showFourthRow)
            Row(
              children: [
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Icon(Icons.edit_calendar_sharp, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Edit', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 30.w),
                Column(
                  children: [
                    Icon(Icons.delete, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Delete', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 50.w),
                Column(
                  children: [
                    Icon(Icons.share),
                    SizedBox(height: 5.h),
                    Text('Share', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    Icon(Icons.print, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Print', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 30.w),
                Column(
                  children: [
                    Icon(Icons.call, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Call', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    Icon(Icons.payment, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Add payment', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}






/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class InvoiceNo extends StatefulWidget {
  final String text;
  final Color color;
  final Color buttonColor;
  final String buttonText;

  const InvoiceNo({
    Key? key,
    required this.text,
    required this.color,
    required this.buttonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  _InvoiceNoState createState() => _InvoiceNoState();
}

class _InvoiceNoState extends State<InvoiceNo> {
  bool showFourthRow = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 357.w,
      height: 217.h,
      color: widget.color,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            children: [
              SizedBox(width: 10.w),
              Text(
                widget.text,
                style: invoiceTextStyle(),
              ),
              SizedBox(width: 10.w),
              Text(
                '12-05-2023 15:30 23',
                style: dateTextStyle(),
              ),
              SizedBox(width: 20.w),
              Text(
                '1 252 00 DH',
                style: invoiceTextStyle(),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              SizedBox(width: 5.w),
              Icon(Icons.person, color: ligColor),
              Text(
                'Customer: client dffrf',
                style: custTextStyle(),
              ),
              SizedBox(width: 40.w),
              Text(
                '50',
                style: custTextStyle(),
              ),
              Image.asset(imCube, width: 20, height: 19, color: ligColor),
              SizedBox(width: 15.w),
              Text(
                'Paid amount     1 852 000 DH',
                style: custTextStyle(),
              ),
            ],
          ),
          SizedBox(width: 5.h),
          Row(
            children: [
              SizedBox(width: 5.w),
              Icon(Icons.location_on, color: ligColor,),
              SizedBox(width: 3.w),
              Text(
                'Location: scalerp MAROC',
                style: custTextStyle(),
              ),
              SizedBox(width: 135.w),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.buttonColor,
                  minimumSize: Size(26.w, 21.h),
                ),
                child: Text(widget.buttonText),
              ),

            ],
          ),
          IconButton(
            icon: Icon(showFourthRow ? Icons.arrow_drop_up : Icons.arrow_drop_down,size: 40,),
            onPressed: () {
              setState(() {
                showFourthRow = !showFourthRow;
              });
            },
          ),
          if (showFourthRow)
            Row(
              children: [
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Icon(Icons.edit_calendar_sharp, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Edit', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 30.w),
                Column(
                  children: [
                    Icon(Icons.delete, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Delete', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 50.w),
                Column(
                  children: [
                    Icon(Icons.share),
                    SizedBox(height: 5.h),
                    Text('Share', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    Icon(Icons.print, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Print', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 30.w),
                Column(
                  children: [
                    Icon(Icons.call, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Call', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    Icon(Icons.payment, color: ligColor),
                    SizedBox(height: 5.h),
                    Text('Add payment', style: TextStyle(fontSize: 10.sp)),
                  ],
                ),
              ],
            ),

        ],
      ),
    );
  }
}


  */
