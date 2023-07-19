import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/order_widget.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/add_expense.dart';

class ShippmentScreen extends StatelessWidget {
  const ShippmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
          child: Column(
            children: [
              SizedBox(height: 20.h),
              TopRow(
                onMenuIconTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddExpense()),
                  );
                },
                icon2: Icon(Icons.date_range, color: ligColor),
                name2: date,
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  SizedBox(width: 17.w),
                  Column(
                    children: [
                      Image.asset(icStatus),
                      SizedBox(height: 2.h),
                      Text(
                        'Status',
                        style: statusTextStyle(),
                      ),
                    ],
                  ),
                  DropdownButton<String>(
                    iconSize: 35,
                    underline: Container(), // Remove the underline/border
                    hint: Text(
                      'Order',
                      style: TextStyle(
                        color: ligColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ), // Hint text
                    value: null, // Current selected value (null by default)
                    onChanged: (String? newValue) {
                      // Handle dropdown value changes here
                    },
                    items: <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DashboardTextCustomWidget(
                    title: shippment,
                    titleStyle: dashBoardTextStyle(),
                    additionalText: 'May 12,2023',
                    additionalTextStyle: custTextStyle(),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              SingleChildScrollView( // Add SingleChildScrollView to each Order widget
                child: Order(
                  color: whiteColor,
                  isExpanded: false,
                ),
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                child: Order(
                  isExpanded: false,
                  color: Color(0xffEADAFF),
                ),
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                child: Order(
                  isExpanded: false,
                  color: whiteColor,
                ),
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                child: Order(
                  isExpanded: false,
                  color: Color(0xffEADAFF),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
