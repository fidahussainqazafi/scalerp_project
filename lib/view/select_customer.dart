import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/colors.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/contact_custom_row.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/search_widget.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/add_contact.dart';
import 'package:scalerp/view/contacts.dart';

import '../custom_widgets/start_button.dart';

class SelectCustomer extends StatelessWidget {
  const SelectCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25.h,),
            TopRow(
              icon2: Image.asset(icScan,width: 47.w,height: 36.h,),
              name2: scan,
              onMenuIconTap: (){

              },
            ),
            SizedBox(height: 13.h),
            Row(
              children: [
                SizedBox(width: 123.w),
                DashboardTextCustomWidget(
                    title: selectCustomer, titleStyle: dashBoardTextStyle(),
                additionalText: '',additionalTextStyle: TextStyle(color: mainColor),
                ),
              ],
            ),
            SizedBox(height: 28.h),
            Row(
              children: [
                SizedBox(width: 15.w),
                SearchButton(
                  icon: Icons.search,
                  hintText: 'Search',
                  trailing: Image.asset(icFilter),
                  width: 361.w,
                  height: 48.h,
                ),

              ],
            ),
            SizedBox(height: 15.h),

            ContactRow(
                text: orLoremIt, textStyle: LoremTextStyle(), sizedBox: SizedBox(width: 46.w,)),
            SizedBox(height: 10.h,),

            ContactRow(
                text: orLorem,
                textStyle: LipsumTextStyle(),
                sizedBox:SizedBox(width: 88.w,),),

            SizedBox(height: 15.h,),

            ContactRow(
                text: or, textStyle: LoremTextStyle(), sizedBox: SizedBox(width: 130.w,)),

            SizedBox(height: 15.h,),

            ContactRow(
              text: orLorem,
              textStyle: LipsumTextStyle(),
              sizedBox:SizedBox(width: 88.w,),),

            SizedBox(height: 15),


            ContactRow(
              text: orLorem,
              textStyle: LoremTextStyle(),
              sizedBox:SizedBox(width: 92.w,),),

            SizedBox(height: 15.h),

            ContactRow(
                text: orLoremIt, textStyle: LipsumTextStyle(), sizedBox: SizedBox(width: 56.w,)),

            SizedBox(height: 10.h,),

            StartButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContact()));
              },
              buttonText: addContact,
              buttonHeight: 56,
              buttonWidth: 360,
              gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)],

              numIcons: 0,
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                SizedBox(width: 17.w,),
                StartButton(
                  onPressed: (){

                   //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContact()));
                  },
                  buttonText: quotation,
                  buttonHeight: 56,
                  buttonWidth: 141,
                  gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)],

                  numIcons: 0,
                ),

                SizedBox(width: 11.w,),

                StartButton(
                  onPressed: (){

                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectCustomer()));
                  },
                  buttonText: payAndChekout,
                  buttonHeight: 56,
                  buttonWidth: 209,
                  gradientColors: const [Color(0xff6CC51D),Color(0xffC1E79F)],

                  numIcons: 0,
                ),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
