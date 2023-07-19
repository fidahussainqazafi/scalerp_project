import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/cart.dart';

class BarCodeScreen extends StatelessWidget {
  const BarCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5.h),
            TopRow(
              onMenuIconTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
              },

              icon2: Image.asset(imFlash, width: 28.w, height: 29.h),
              name2: flash,
            ),
            SizedBox(height: 15.h),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(imScanCode, width: 370.w, height: 743.h),
                Container(
                  width: 390.w,
                  height: 39.h,
                  color: mainColor,
                  // Add your desired content for the overlayed container here
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
