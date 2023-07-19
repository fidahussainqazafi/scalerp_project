import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/description_widget.dart';
import 'package:scalerp/custom_widgets/drop_down_custom_widget.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/follow_up_list.dart';

import '../custom_widgets/start_button.dart';
class AddFollowUp extends StatelessWidget {
  const AddFollowUp({Key? key}) : super(key: key);

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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const FollowUpList()));
              },
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(width: 142.w),
                DashboardTextCustomWidget(
                    title: addFollowUp, titleStyle: dashBoardTextStyle(),
                 additionalText: '',
                  additionalTextStyle: dashBoardTextStyle(),
                ),
              ],
            ),


            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 140.w),
                Text(customerClient,style: cTextStyle(),),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                const DescriptionWidget(
                    text1: title),
              ],
            ),

            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                DropDownField(
                  width: 165.w,
                    height: 90.h,
                    text1: status,textStyle: tittleTextStyle(),
                  text2: '',

                  dropdownHintText: completed,
                  dropdownItems: const [],
                  //  dropdownItems: ['Item 1', 'Item 2', 'Item 3'],
                  //   selectedDropdownItem: 'Item 1',
                ),
                SizedBox(width: 10.h),
                DropDownField(
                  width: 169.w,
                  height: 90.h,
                  text1: followUpType,textStyle: tittleTextStyle(),
                  text2: '',

                  dropdownHintText: call,
                  dropdownItems: const [],
                  //  dropdownItems: ['Item 1', 'Item 2', 'Item 3'],
                  //   selectedDropdownItem: 'Item 1',
                ),

              ],
            ),
            SizedBox(height: 10.h),

            Row(
              children: [
                SizedBox(width: 17.w),
                DropDownField(
                  width: 161.w,
                  height: 50.h,
                  text1: startDateTime,textStyle: tittleTextStyle(),
                  text2: '11-05-2023 13:20',

                ),
                SizedBox(width: 10.h),
                DropDownField(
                  width: 173.w,
                  height: 50.h,
                  text1: endDateTime,textStyle: tittleTextStyle(),
                  text2: '11-05-2023 13:20',
                ),

              ],
            ),

            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                DropDownField(

                  width: 342.w,
                  height: 90.h,
                  text1: followUpCategory,textStyle: tittleTextStyle(),
                  text2: '',
                  dropdownHintText: pleaseSelect,
                  dropdownItems: const [],
                  //  dropdownItems: ['Item 1', 'Item 2', 'Item 3'],
                  //   selectedDropdownItem: 'Item 1',
                ),
              ],
            ),

            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                const DescriptionWidget(
                    text1: description),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                SizedBox(width: 17.w),
                StartButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const FollowUpList()));
                  },
                  buttonText:addFollowUp ,
                  buttonHeight: 56.h,
                  buttonWidth: 344.w,
                  gradientColors: const [Color(0xff823BE3), Color(0xffA168EB)],
                  numIcons: 0,
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
