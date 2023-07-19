import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/images.dart';
import 'package:scalerp/custom_widgets/invoice_custom_widget.dart';
import 'package:scalerp/custom_widgets/search_widget.dart';
import 'package:scalerp/view/shipment_screen.dart';
import '../conts/strings.dart';
import '../conts/style.dart';
import '../custom_widgets/dashborad_text_custom_widget.dart';
import '../custom_widgets/top_row.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            TopRow(
              onMenuIconTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippmentScreen()));
              },
              icon1: Image.asset(icShipment, width: 30.w, height: 29.h),
              name1: shipment,
              icon2: Icon(Icons.sync, color: whiteColor),
              name2: sync,
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 174.w),
                DashboardTextCustomWidget(
                  title: sales,
                  titleStyle: productTextStyle(),
                  additionalText: '',
                  additionalTextStyle: localCasaTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 29),
                SearchButton(
                  icon: Icons.search,
                  width: 209.w,
                  height: 48.h,
                ),
                SizedBox(width: 1.w),
                Row(
                  children: [
                    Transform.translate(
                      offset: Offset(10, 0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 75,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.elevator_outlined),
                              SizedBox(height: 5),
                              Text(
                                allSales,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 63,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.point_of_sale_sharp),
                            SizedBox(height: 5),
                            Text(
                              'Recent',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],// upto this
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InvoiceNo(
                      text: invoiceNo,
                      color: lColor,
                      buttonText: paid,
                      buttonColor: pColor,
                    ),
                    SizedBox(height: 5.h),
                    InvoiceNo(
                      text: invoiceNo,
                      color: whiteColor,
                      buttonColor: pColor,
                      buttonText: paid,
                    ),
                    SizedBox(height: 5.h),
                    InvoiceNo(
                      text: invoiceNo,
                      color: lColor,
                      buttonColor: Color(0xffBA4030),
                      buttonText: due,
                    ),
                    SizedBox(height: 5),
                    InvoiceNo(
                      text: referenceNo,
                      color: whiteColor,
                      buttonColor: mainColor,
                      buttonText: qutation,
                    ),
                    SizedBox(height: 5),
                    InvoiceNo(
                      text: referenceNo,
                      color: lColor,
                      buttonColor: Colors.yellow,
                      buttonText: parial,
                    ),
                    SizedBox(height: 5.h),
                    InvoiceNo(
                      text: invoiceNo,
                      color: whiteColor,
                      buttonColor: gColor,
                      buttonText: paid,
                    ),
                    SizedBox(height: 5.h),
                    Center(
                      child: Container(
                        width: 135.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Color(0xffB9C0C9),
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
