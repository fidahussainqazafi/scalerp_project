import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/custom_widgets/tree_custom_widegt.dart';
import 'package:scalerp/view/bar_code_screen.dart';

import 'select_customer.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BarCodeScreen()));
              },
              icon1: const Icon(Icons.search, color: darkGreyColor),
              name1: search,
              icon2: Image.asset(icScan, width: 47.w, height: 36.h),
              name2: scan,
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                SizedBox(width: 178.w),
                DashboardTextCustomWidget(
                  title: cart,
                  titleStyle: dashBoardTextStyle(),
                  additionalText: '',
                  additionalTextStyle: dashBoardTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 17.12.w),
                Dismissible(key: UniqueKey(),

                  background: Container(
                    color: Colors.blue,
                    alignment: Alignment.centerLeft,
                    child:  Icon(Icons.man,size: 40.sp,color: whiteColor,),
                  ),
                  secondaryBackground: Container(


                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
                  ),
                  child: TreeCustomWidget(
                    image: imTree,
                    text: freshBroccoli,
                    containerColor: whiteColor,
                    borderRadius: 15.0.r,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),

            Dismissible(key: UniqueKey(),

              background: Container(
                color: Colors.blue,
              alignment: Alignment.centerLeft,
              child:  Icon(Icons.man,size: 40.sp,color: whiteColor,),
            ),
              secondaryBackground: Container(


                color: Colors.red,
                alignment: Alignment.centerRight,
                child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
              ),


              child: TreeCustomWidget(
                image: imGrapes,
                text: blackGrapes,
                containerColor: const Color(0xffEADAFF),
                borderRadius: 10.0.r,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                SizedBox(width: 17.h,),
                Dismissible(key: UniqueKey(),

                  background: Container(
                    color: Colors.blue,
                    alignment: Alignment.centerLeft,
                    child:  Icon(Icons.edit,size: 40.sp,color: whiteColor,),
                  ),
                  secondaryBackground: Container(


                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
                  ),
                  child: TreeCustomWidget(
                    image: imAvacoda,
                    text: avacoda,
                    containerColor: whiteColor,
                    borderRadius: 15.0.r,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Dismissible(key: UniqueKey(),

              background: Container(
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child:  Icon(Icons.edit,size: 40.sp,color: whiteColor,),
              ),
              secondaryBackground: Container(


                color: Colors.red,
                alignment: Alignment.centerRight,
                child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
              ),


              child: TreeCustomWidget(
                image: imGrapes,
                text: blackGrapes,
                containerColor: const Color(0xffEADAFF),
                borderRadius: 10.0.r,
              ),
            ),
            SizedBox(height: 5.h),
            Dismissible(key: UniqueKey(),

              background: Container(
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child:  Icon(Icons.edit,size: 40.sp,color: whiteColor,),
              ),
              secondaryBackground: Container(


                color: Colors.red,
                alignment: Alignment.centerRight,
                child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
              ),
              child: TreeCustomWidget(
                image: imTree,
                text: freshBroccoli,
                containerColor: whiteColor,
                borderRadius: 15.0.r,
              ),
            ),
            SizedBox(height: 5.h),
            Dismissible(key: UniqueKey(),

              background: Container(
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child:  Icon(Icons.edit,size: 40.sp,color: whiteColor,),
              ),
              secondaryBackground: Container(


                color: Colors.red,
                alignment: Alignment.centerRight,
                child:  Icon(Icons.delete,size: 40.sp,color: whiteColor,),
              ),
              child: TreeCustomWidget(
                image: imAvacoda,
                text: avacoda,
                containerColor: whiteColor,
                borderRadius: 15.0.r,
              ),
            ),
            SizedBox(height: 11.h),
            Row(
              children: [
                SizedBox(width: 19.w),
                Text(
                  subtotal,
                  style: subTotalTextStyle(),
                ),
                SizedBox(width: 227.w),
                Text(
                  '15 200,00 DH',
                  style: subTotalTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                SizedBox(width: 19.w),
                Text(
                  shippingCharges,
                  style: subTotalTextStyle(),
                ),
                SizedBox(width: 130.w),
                Container(
                  width: 129.w,
                  height: 25.h,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    '154,00 DH',
                    style: subTotalTextStyle(),
                  ),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                SizedBox(width: 19.w),
                Text(
                  shippingCharges,
                  style: subTotalTextStyle(),
                ),
                SizedBox(width: 22.w),
                Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(10, 0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          width: 54.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 44.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            "Fix",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(width: 20.w),
                Container(
                  width: 129.w,
                  height: 25.h,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    '154,00 DH',
                    style: subTotalTextStyle(),
                  ),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
             SizedBox(height: 8.h),
            
            Row(
              children: [
                SizedBox(width: 20.w,),
                Text(total,style: totalTextStyle(),),
                 SizedBox(width: 190.w,),
                Text('15 2000,00 DH',style: TextStyle(color: whiteColor,fontSize: 18.sp,
                fontWeight: FontWeight.w600),)
              ],
            ),
            SizedBox(height: 5.h),
            Center(
              child: Container(
                width: 360.w,
                height: 3.h,
                decoration: BoxDecoration(
                  color: const Color(0xffEBEBEB),
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
              ),
            ),

            SizedBox(height: 2.h),
            StartButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SelectCustomer()));
                },
                buttonText: selectCustomer,
                buttonHeight: 56.h,
                buttonWidth: 360.w,
                gradientColors: const [Color(0xff823BE3),Color(0xffA168EB)],

              numIcons: 1,
            ),

          ],
        ),
      ),
    );
  }
}
