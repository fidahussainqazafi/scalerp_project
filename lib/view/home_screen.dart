import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/sales_button.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/dashboard_menu_expanse.dart';
import '../custom_widgets/row_with_icon_text.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late bool isDebitSelected = true; // Initialize with a default value


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _handleTabButtonPress(int tabIndex) {
    setState(() {
      _tabController.animateTo(tabIndex);
      isDebitSelected = tabIndex == 0; // Update the selected tab
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            TopRow(
              onMenuIconTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashboardMenu()));
              },
              icon1: Image.asset(icSync),
              name1: sync,
              icon2: Icon(Icons.logout, color: whiteColor),
              name2: logOut,
            ),
            SizedBox(height: 11.h),
            Row(
              children: [
                SizedBox(width: 160.w),
                Center(
                  child: DashboardTextCustomWidget(
                    title: dashBoard,
                    titleStyle: dashBoardTextStyle(),
                    additionalText: '',
                    additionalTextStyle: const TextStyle(color: mainColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 27.h),
            Row(
              children: [
                SizedBox(width: 22.w),
                const SalesButton(
                  buttonText: numberOfSales,
                  image: imSale,
                  text: '150',
                ),
                const Spacer(),
                const SalesButton(
                  buttonText: salesAmount,
                  image: imSale,
                  text: '72 000 DH',
                ),
                SizedBox(width: 30.w),
              ],
            ),
            SizedBox(height: 23.h),
            Row(
              children: [
                SizedBox(width: 22.w),
                const SalesButton(
                  buttonText: paidAmount,
                  image: imAmount,
                  text: '15 360 DH',
                ),
                const Spacer(),
                const SalesButton(
                  buttonText: dueAmount,
                  image: imAmount,
                  text: '8 000 DH',
                ),
                SizedBox(width: 30.w),
              ],
            ),
            SizedBox(height: 17.h),
            Center(
              child: Text(
                paymentDetails,
                style: paymentDetailsTextStyle(),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 292.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.deepPurple,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isDebitSelected
                            ? whiteColor
                            : Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        minimumSize: Size(152.w, 40.48.h),
                      ),
                      onPressed: () => _handleTabButtonPress(0),
                      child: Text(
                        debit,
                        style: debitTextStyle(),
                      ),
                    ),
                  ),
                  Tab(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isDebitSelected
                            ? whiteColor
                            : Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        minimumSize: Size(134.5.w, 40.48.h),
                      ),
                      onPressed: () => _handleTabButtonPress(1),
                      child: Text(
                        credit,
                        style: creditTextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.52.h),
            SingleChildScrollView(
              child: Container(
                height: 340.h, // Adjust the height as needed
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Content for the "Debit" tab
                    Column(
                      children: [
                        SizedBox(height: 17.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: cash,
                              textStyle: cashTextStyle(),
                              textFieldText: '12 220 DH',
                            ),
                            SizedBox(width: 22.w),
                          ],
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: debitCard,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '6 050 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 11.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: expenses,
                              textStyle: cashTextStyle(),
                              textFieldText: '1 541 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: cash,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '89 210 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: cash,
                              textStyle: cashTextStyle(),
                              textFieldText: '983 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: cash,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '6 400 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: expenses,
                              textStyle: cashTextStyle(),
                              textFieldText: '1 541 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: debitCard,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '89 210 DH',
                            ),
                          ],
                        ),



                      ],
                    ),

                    // Content for the "Credit" tab
                    Column(
                      children: [
                        SizedBox(height: 17.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: cash,
                              textStyle: cashTextStyle(),
                              textFieldText: '12 220 DH',
                            ),
                            SizedBox(width: 22.w),
                          ],
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: debitCard,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '6 050 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 11.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: expenses,
                              textStyle: cashTextStyle(),
                              textFieldText: '1 541 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: cash,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '89 210 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: cash,
                              textStyle: cashTextStyle(),
                              textFieldText: '983 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: cash,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '6 400 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: gColor,
                              text: expenses,
                              textStyle: cashTextStyle(),
                              textFieldText: '1 541 DH',
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h),
                        Row(
                          children: [
                            SizedBox(width: 25.w),
                            RowWithIconAndTextField(
                              iconColor: lPinkColor,
                              text: debitCard,
                              textStyle: debitCardTextStyle(),
                              textFieldText: '89 210 DH',
                            ),
                          ],
                        ),

                      ],
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