import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/add_custom_row.dart';
import 'package:scalerp/custom_widgets/custom_container.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/payment__widget_row.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/sales_screen.dart';
class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            TopRow(
              onMenuIconTap: (){},
              icon2: const Icon(Icons.date_range,color: ligColor,),
              name2: date,
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(width: 148.w),
                DashboardTextCustomWidget(
                    title: checkout, titleStyle: dashBoardTextStyle(),
                additionalText: may,
                  additionalTextStyle: scanTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            const PaymentRow(
                text: '15 200,00 DH'),
            SizedBox(height: 20.h),
            const AddRow(),
            
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                Text(shippment,style: dashBoardTextStyle(),),
              ],
            ),
            SizedBox(height: 15.h),
            Row(children: [
              SizedBox(width: 17.w),
              CustomContainer(
                width: 163.w,
                  height: 48.h,
                  image: Image.asset(icShipmentCharges),

                  text: shippingCharges,
                  color: Colors.deepPurple),
              SizedBox(width: 10.w),

              CustomContainer(
                width: 187.w,
                height: 48.h,
                image: Image.asset(icEdit),
                text: ('Shipping details\n Lorem ipsu ....'),
                color: whiteColor),
            ],
      ),

            SizedBox(height: 15.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                Text('Total payable  :\n15 200,00 DH',style: dashBoardTextStyle(),),
                SizedBox(width: 150.w),
                Text('Total paying  :\n15 200,00 DH',style: dashBoardTextStyle(),)

              ],
            ),
            SizedBox(height: 35.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                Text('Change return  :\n0,00 DH',style: dashBoardTextStyle(),),
                SizedBox(width: 160.w),
                Text('Balance  :\n0,00 DH',style: dashBoardTextStyle(),)

              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
              SizedBox(width: 17.w,),
                CustomContainer(
                  width: 154.w,
                    height: 38.h,
                    image: Image.asset(icEdit),

                    text: sellNote,
                    color: Colors.deepPurple),
                SizedBox(width: 10.w),
                CustomContainer(
                    width: 103.w,
                    height: 38.h,
                    image: Image.asset(icEdit),

                    text: staffNote,
                    color: Colors.deepPurple),
                SizedBox(width: 5.w),
                Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(10, 0),
                      child: Container(
                        width: 47.w,
                        height: 38.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Image.asset(icWebLayout,width: 20.w,height: 20.h,),
                        ),
                      ),
                    ),
                    Container(
                      width: 44,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(icMobile,width: 13.w,height: 18.h,)
                      ),
                    ),
                  ],
                ),

            ],
            ),

            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 17.w,),
                StartButton(
                    onPressed: (){},
                    buttonText: finalizeAndShare,
                    buttonHeight: 56.h,
                    buttonWidth: 151.w,
                    gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)],
                 numIcons: 0,
                ),
                SizedBox(width: 15.w),
                StartButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SalesScreen()));
                  },
                  buttonText: finalizeA1ndPrint,
                  buttonHeight: 56.h,
                  buttonWidth: 200.w,
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
