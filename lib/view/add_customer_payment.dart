import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/add_custom_row.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/search_widget.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
class AddCustomerPayment extends StatelessWidget {
  const AddCustomerPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            TopRow(
              onMenuIconTap: () {},
              icon2: const Icon(Icons.date_range, color: ligColor),
              name2: location,
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(width: 88.w),
                DashboardTextCustomWidget(
                  title: addCustomerPayement,
                  titleStyle: dashBoardTextStyle(),
                  additionalText: localCasa,
                  additionalTextStyle: scanTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            SearchButton(
              width: 361.w,
                height: 48,
                hintText: selectCustomer,
                icon: Icons.search),
            SizedBox(height: 20.h),
            const AddRow(),

            SizedBox(height: 50.h),
            Row(
              children: [
                SizedBox(width: 17.w,),
                StartButton(
                  onPressed: (){},
                  buttonText: submit,
                  buttonHeight: 56.h,
                  buttonWidth: 353.w,
                  gradientColors: const [Color(0xff6CC51D),Color(0xffAFD190)],
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
