import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class Order extends StatefulWidget {
  final Color color;
  bool isExpanded = false;
  Order({required this.isExpanded, required this.color, Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _currentStep = 0;
  bool _isContentVisible = false;

  double _containerHeight = 130.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: AnimatedContainer(
        width: 357.w,
        height: _containerHeight,
        color: widget.color,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 62.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffbEADAFF),
                    ),
                    child: Image.asset(
                      imSBox,
                      color: mainColor,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order #90897',
                        style: orderTextStyle(),
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Placed on October 19, 2021',
                            style: placedOnTextStyle(),
                          ),
                          SizedBox(width: 40.w),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isContentVisible = !_isContentVisible;
                                _containerHeight = _isContentVisible ? 420.0 : 130.0;
                              });
                            },
                            child: Container(
                              width: 36.w,
                              height: 36.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: mainColor.withOpacity(0.2),
                              ),
                              child: Icon(
                                _isContentVisible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                                size: 34.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Text(
                            'Items: 10',
                            style: itemTextStyle(),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Items: \$16.90',
                            style: itemTextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              AnimatedOpacity(
                opacity: _isContentVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 300),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              AnimatedContainer(
                width: double.infinity,
                height: _isContentVisible ? 300.h : 0,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Stepper(
                  currentStep: _currentStep,
                  onStepTapped: (step) {
                    setState(() {
                      _currentStep = step;
                    });
                  },
                  steps: [
                    Step(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentStep = 0;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Placed',
                              style: placedTextStyle(),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'October 19, 2021',
                              style: TextStyle(color: ligColor),
                            ),
                          ],
                        ),
                      ),
                      content: Container(),
                      isActive: _currentStep == 0,
                    ),
                    Step(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentStep = 1;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Shipped',
                              style: placedTextStyle(),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'October 20, 2021',
                              style: TextStyle(color: ligColor),
                            ),
                          ],
                        ),
                      ),
                      content: Container(),
                      isActive: _currentStep == 1,
                    ),
                    Step(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentStep = 2;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Confirmed',
                              style: placedTextStyle(),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'October 21, 2021',
                              style: TextStyle(color: ligColor),
                            ),
                          ],
                        ),
                      ),
                      content: Container(),
                      isActive: _currentStep == 2,
                    ),
                    Step(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentStep = 3;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Out for Delivery'),
                            SizedBox(width: 5.w),
                            Text(
                              pending,
                              style: TextStyle(color: ligColor),
                            ),
                          ],
                        ),
                      ),
                      content: Container(
                        child: Text(''),
                        color: Colors.green,
                      ),
                      isActive: _currentStep == 3,
                    ),
                    Step(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentStep = 4;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order Delivered'),
                            SizedBox(width: 5.w),
                            Text(
                              pending,
                              style: TextStyle(color: ligColor),
                            ),
                          ],
                        ),
                      ),
                      content: Container(
                        color: Colors.green,
                      ),
                      isActive: _currentStep == 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
