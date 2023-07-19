import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/add_custom_row.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/payment__widget_row.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/add_customer_payment.dart';

class AddExpense extends StatefulWidget {

  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    String? valueChoose;
    List<String> listItems = ["item1","item2","item3"];
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
                SizedBox(width: 158.w),
                DashboardTextCustomWidget(
                  title: addExpense,
                  titleStyle: dashBoardTextStyle(),
                  additionalText: localCasa,
                  additionalTextStyle: scanTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            const PaymentRow(text: '0,00 DH'),
            SizedBox(height: 20.h),
            const AddRow(),
            SizedBox(height: 15.h,),
            Row(
              children: [
                SizedBox(width: 17.w),
                Column(
                  children: [
                    Image.asset(imCategory, width: 25.w, height: 25.w),
                    SizedBox(height: 5.w),
                    Text(category,style: nTextStyle(),),
                  ],
                ),
                SizedBox(width: 4.w),
                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text('none', style: nTextStyle()),
                      iconSize: 30.sp,
                      iconEnabledColor: whiteColor,
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      underline: Container(),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Column(
                  children: [
                    Image.asset(imSubcategory, width: 24.w, height: 27.h),
                    SizedBox(height: 5.w),
                    Text(subCategory,style: nTextStyle(),),
                  ],
                ),
                SizedBox(width: 5.w),
                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text('none', style: nTextStyle()),
                      iconSize: 30.sp,
                      iconEnabledColor: whiteColor,
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      underline: Container(),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Column(
                  children: [
                    const Icon(Icons.edit_calendar,color: ligColor,),
                    SizedBox(height: 5.w),
                    Text(edit,style: nTextStyle(),),
                  ],
                ),
                SizedBox(width: 2.w),
                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text('none', style: nTextStyle()),
                      iconSize: 30.sp,
                      iconEnabledColor: whiteColor,
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue;
                        });
                      },
                      items: listItems.map((valueItem) {
                        return DropdownMenuItem<String>(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      underline: Container(),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: 50.h),
            Row(
              children: [
                SizedBox(width: 17.w),
                StartButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCustomerPayment()));
                  },
                  buttonText: submit,
                  buttonHeight: 56.h,
                  buttonWidth: 353.w,
                  gradientColors: const [Color(0xff6CC51D), Color(0xffAFD190)],
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
