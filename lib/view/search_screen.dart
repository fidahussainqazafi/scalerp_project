import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/contact_custom_row.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/search_widget.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/add_contact.dart';
import 'package:scalerp/view/add_follow_up.dart';

import '../conts/colors.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            TopRow(
              onMenuIconTap: (){

              },
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
                SizedBox(width: 160.w,),
                DashboardTextCustomWidget(
                  title: contacts, titleStyle: dashBoardTextStyle(),
                  additionalText: '',
                  additionalTextStyle: dashBoardTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 14.h,),

            Row(
              children: [
                SizedBox(width: 36.w),
                Text(leads,style: TextStyle(color: ligColor,fontSize: 12.sp,
                    fontWeight: FontWeight.w500),),
                SizedBox(width: 76.w),
                StartButton(
                    onPressed: (){},
                    buttonText: customer,
                    buttonHeight: 24.h,
                    buttonWidth: 91.w,
                    gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)]),

                SizedBox(width: 66.w,),
                Text(suppliers,style: TextStyle(color: ligColor,fontSize: 12,
                    fontWeight: FontWeight.w500),)
              ],
            ),
            SizedBox(height: 15),
            SearchButton(
              icon: Icons.search,
              hintText: 'Search',
              trailing: Image.asset(icFilter),
              width: 361.w,
              height: 48.h,
            ),
            SizedBox(height: 5),

            Container(
              width: 361.w,
              height: 64.h,
              color: Colors.deepPurple,
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  ContactRow(
                      text: orLoremIt,
                      textStyle: loriumIpsumTextStyle(),
                      sizedBox: SizedBox(width: 40)),
                  SizedBox(height: 10.h,),
                  Row(

                    children: [
                      SizedBox(width: 235.w,),
                      Icon(Icons.calendar_month,color: ligColor,),
                      SizedBox(width: 4.w),
                      Text(addFollowUp,style: TextStyle(color: whiteColor),),
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: 13.h),
            ContactRow(
              text: orLorem,
              textStyle: LipsumTextStyle(),
              sizedBox:SizedBox(width: 88.w,),),

            SizedBox(height: 13.h,),
            ContactRow(
                text: or, textStyle: LoremTextStyle(), sizedBox: SizedBox(width: 130.w,)),

            SizedBox(height: 13.h,),

            ContactRow(
              text: orLorem,
              textStyle: LipsumTextStyle(),
              sizedBox:SizedBox(width: 88.w,),),
            SizedBox(height: 13),


            ContactRow(
              text: orLorem,
              textStyle: LoremTextStyle(),
              sizedBox:SizedBox(width: 92.w,),),

            SizedBox(height: 13.h),

            ContactRow(
                text: orLoremIt, textStyle: LipsumTextStyle(), sizedBox: SizedBox(width: 56.w,)),
            SizedBox(height: 35.h),


            StartButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFollowUp()));
              },
              buttonText: addContact,
              buttonHeight: 56,
              buttonWidth: 360,
              gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)],

              numIcons: 0,
            ),

          ],
        ),
      ),


    );
  }
}
