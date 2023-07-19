import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/view/products_screen.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/top_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            TopRow(
              onMenuIconTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductScreen()));
              },
              icon1: Icon(Icons.sync, color: whiteColor),
              name1: sync,
              icon2: Icon(Icons.logout, color: whiteColor),
              name2: logOut,
            ),
            GestureDetector(
              onTap: () {
               const url = 'https://dev.scalerp.com/user/profile';


              },
              child: Container(
                width: 391.w,
                height: 690.h,
                color: Color(0xffD9D9D9),
                child: Center(
                  child: Text(
                    'Load web view of this url\nhttps://dev.scalerp.com/user/profile',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
