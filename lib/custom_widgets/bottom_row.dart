import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/view/home_screen.dart';
import 'package:scalerp/view/products_view_squares.dart';
import 'package:scalerp/view/profile_screen.dart';
import 'package:scalerp/view/sales_screen.dart';
import 'package:scalerp/view/search_screen.dart';

import '../conts/colors.dart';
import '../conts/strings.dart';
import '../conts/style.dart';
import '../view/dashboard_menu_expanse.dart';
import '../view/products_screen.dart';

class BottomRow extends StatelessWidget {

    final String text;
    final TextStyle textStyle;

    BottomRow({required this.text,required this.textStyle});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393.w,
      height: 58.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Column(
              children: [
                SizedBox(height: 13.h),
                const Icon(Icons.home_outlined, color: ligColor),
                SizedBox(height: 6.h),
                Text(home, style: searcTextStyle()),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));

            },
            child: Column(
              children: [
                SizedBox(height: 10.h),
                const Icon(Icons.search, color: ligColor),
                SizedBox(height: 6.h),
                Text(search, style: searcTextStyle()),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductScreen()));
            },
            child: Column(
              children: [
                SizedBox(height: 13.h),
                Image.asset(icProduct,width: 24.w,height: 24.h),
                SizedBox(height: 6.h),
                Text(text, style: textStyle),
              ],
            ),
          ),
          InkWell(
            onTap: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => const SalesScreen()));
            },
            child: Column(
              children: [
                SizedBox(height: 13.h),
                const Icon(Icons.schedule_sharp, color: ligColor),
                SizedBox(height: 6.h),
                Text(sales, style: searcTextStyle()),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));

            },
            child: Column(
              children: [
                SizedBox(height: 13.h),
                const Icon(Icons.person, color: ligColor),
                SizedBox(height: 4.h),
                Text(profile, style: searcTextStyle()),
                SizedBox(width: 25.w),

                

              ],
            ),
          ),
        ],
      ),
    );
  }
}
