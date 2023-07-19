import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scalerp/controller/theme_switch_controller.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashboard_expense_widget.dart';
import 'package:scalerp/view/home_screen.dart';

class DashboardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 41.h),
            Row(
              children: [
                SizedBox(width: 57.w),
                Image.asset(imDreb, width: 253.w, height: 219.h),

                SizedBox(width: 16.w),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Container(
                    width: 52.w,
                    height: 244.h,
                    margin: const EdgeInsets.only(top: 6.0),
                    alignment: Alignment.topCenter,
                    child: const Icon(
                      Icons.close,
                      size: 45.0,
                      color: ligColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 68.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 52.0,
                ),
                SizedBox(
                  height: 22.h,
                  width: 41.w,
                  child: Consumer<SwitchController>(
                    builder: (context, switchController, _) {
                      return Transform.scale(
                        scale: 1.0,
                        child: Switch(
                          value: switchController.themeswitch,
                          onChanged: (value) {
                            switchController.changeThemeswitch(value);
                          },
                          activeColor: const Color(0xFFB4B4B4),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Text(
                  themeSwitch,
                  style: themeSwitchTextStyle(),
                ),
              ],
            ),
            SizedBox(height: 19.h),
            const CustomRowWidget(
              imageAsset: icEnglish,
              text: english,
              leadingSpacing: 62.0,
              trailingSpacing: 18.0,
              hasDropdownButton: true,
            ),
            SizedBox(height: 9.h),
            const CustomRowWidget(
              imageAsset: icExpense,
              text: expense,
              leadingSpacing: 60.96,
              trailingSpacing: 18.0,
            ),
            SizedBox(height: 10.h),
            const CustomRowWidget(
              imageAsset: icCustomerPayment,
              text: customerPayment,
              leadingSpacing: 62.0,
              trailingSpacing: 20.0,
            ),
            SizedBox(height: 18.h),
            const CustomRowWidget(
              imageAsset: icFollowsup,
              text: followUps,
              leadingSpacing: 62.0,
              trailingSpacing: 17.0,
            ),
            SizedBox(height: 21.h),
            const CustomRowWidget(
              imageAsset: icShipments,
              text: shipment,
              leadingSpacing: 62.0,
              trailingSpacing: 25.0,
            ),
            SizedBox(height: 21.h),
            const CustomRowWidget(
              imageAsset: icRefresh,
              text: refresh,
              leadingSpacing: 62.0,
              trailingSpacing: 28.0,
            ),
            SizedBox(height: 17.h),
            const CustomRowWidget(
              imageAsset: icCheckin,
              text: checkIn,
              leadingSpacing: 62.0,
              trailingSpacing: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
