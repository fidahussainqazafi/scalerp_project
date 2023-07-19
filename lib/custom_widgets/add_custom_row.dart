import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class AddRow extends StatelessWidget {
  const AddRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = 'Cash'; // Set the default selected value to "Cash"

    return Container(
      width: 362.w,
      height: 190.h,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 110.0,
                height: 90.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 13.w),
                        Image.asset(icPaymentMethod, width: 25.w, height: 29.h),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            value: selectedValue,
                            items: <String>['Cash', 'Option 1', 'Option 2', 'Option 3'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: nTextStyle(),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Update the selected value when the dropdown value changes
                              if (newValue != null) {
                                selectedValue = newValue;
                                // Perform any additional logic or actions based on the new value
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 13.w),
                        Text(
                          'Payment Method',
                          style: nTextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: 110.0,
                height: 90.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 13.w),
                        Image.asset(icPaymentAccount, width: 25.w, height: 29.h),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            value: 'None', // Set the default selected value to "None"
                            items: <String>['None', 'Option 1', 'Option 2', 'Option 3'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: nTextStyle(),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Update the selected value when the dropdown value changes
                              if (newValue != null) {
                                // Perform any additional logic or actions based on the new value
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 13.w),
                        Text(
                          'Payment Account',
                          style: nTextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(5,00),
                child: Container(
                  width: 108.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 3.0),
                          Icon(
                            Icons.edit_calendar_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(width: 2.0),
                          Text(
                            payementNote,
                            style: nTextStyle(),
                          ),
                        ],
                      ),

                      Text(
                        'Lorem ipsum....',
                        style: nTextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 36.w,
                height: 60.h,
                decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
                color: Colors.deepPurple,

              ),
                child: Center(child: Text(add,style: dashBoardTextStyle(),)),
              ),

            ],
          ),
          SizedBox(height: 40.h),
          Row(
            children: [
              Text('10 000,00  DH',style: nTextStyle(),),
              SizedBox(width: 25.w,),
              Text(' Account 235 SG  ',style: nTextStyle(),),
              SizedBox(width: 28,),
              Text(' Lorem ipsum, or lipsum as it is\nsometimes k nown  cdf sdf sdf ....',
                style: nTextStyle(),),
            ],
          ),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Text(cash,style: nTextStyle(),),
              SizedBox(width: 70.w,),
              Text('12/05/2023 15:30',style: nTextStyle(),)
            ],
          ),

        ],
      ),

    );
  }
}
