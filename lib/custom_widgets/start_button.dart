import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final List<Color> gradientColors; // Gradient colors
  final int numIcons; // Number of icons to display after the text

  const StartButton({
    required this.onPressed,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.gradientColors, // Pass gradient colors to the constructor
    this.numIcons = 0, // Default to no icon
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 15.w,
      right: 15.w,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: buttonHeight.h,
          width: buttonWidth.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.w),
            gradient: LinearGradient(
              colors: gradientColors, // Use gradientColors parameter
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5.w),
                for (int i = 0; i < numIcons; i++)
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 20.sp,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
