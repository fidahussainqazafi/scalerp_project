
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class CustomRowWidget extends StatelessWidget {
  final String imageAsset;
  final String text;
  final double leadingSpacing;
  final double trailingSpacing;
  final bool hasDropdownButton;

  const CustomRowWidget({
    required this.imageAsset,
    required this.text,
    this.leadingSpacing = 62.0,
    this.trailingSpacing = 18.0,
    this.hasDropdownButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: leadingSpacing.w),
        Image.asset(imageAsset),
        SizedBox(width: trailingSpacing.w),
        Text(
          text,
          style: englishTextStyle(),
        ),
        if (hasDropdownButton) ...[
          SizedBox(width: 123.w),
          DropdownButton<String>(
            value: 'English',
            onChanged: (value) {},
            elevation: 3,
            icon: const Icon(
              Icons.arrow_drop_down,
              size: 44.0,
              color: Color(0xffD9D9D9),
            ),
            underline: Container(),
            items: <String>['English', 'Urdu', 'Pushto'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Container(
                  width: 15.w,
                  height: 13.h,
                  alignment: Alignment.center,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 10.sp,color: mainColor),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );
  }
}
