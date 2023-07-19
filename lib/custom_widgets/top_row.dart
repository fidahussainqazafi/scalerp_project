import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/sales_button.dart';
import 'package:scalerp/view/dashboard_menu_expanse.dart';

import '../custom_widgets/row_with_icon_text.dart';

class TopRow extends StatelessWidget {
  final Widget? icon1;
  final Widget? icon2;
  final String? name1;
  final String? name2;
  final VoidCallback? onMenuIconTap;


  const TopRow({
    Key? key,
    this.icon1,
    this.icon2,
    this.name1,
    this.name2,
    this.onMenuIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        InkWell(
          onTap: onMenuIconTap,
          child: Icon(
            Icons.menu,
            color: whiteColor,
          ),
        ),
        SizedBox(
          width: 75.w,
        ),
        Image.asset(
          imLogo,
          width: 137.w,
          height: 48.h,
        ),
        SizedBox(
          width: 30.w,
        ),
        if (icon1 != null && name1 != null)
          InkWell(
            onTap: () {
              // Handle sync icon click here
            },
            child: Column(
              children: [
                icon1!,
                SizedBox(height: 4.h),
                Text(
                  name1!,
                  style: syncTextStyle(),
                ), // Name below the sync icon
              ],
            ),
          ),
        Spacer(),
        if (icon2 != null && name2 != null)
          InkWell(
            onTap: () {
              // Handle logout icon click here
            },
            child: Column(
              children: [
                icon2!,
                SizedBox(height: 4.h),
                Text(
                  name2!,
                  style: logOutTextStyle(),
                ), // Name below the logout icon
              ],
            ),
          ),
        SizedBox(
          width: 16.w,
        ),
      ],
    );
  }
}
