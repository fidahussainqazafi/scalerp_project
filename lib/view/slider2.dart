import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/view/slider3.dart';

class Slider2 extends StatefulWidget {
  @override
  _Slider2State createState() => _Slider2State();
}

class _Slider2State extends State<Slider2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imSlider2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 39.h,
            left: 64.w,
            child: Center(
              child: Image.asset( imLogo, // Replace with your logo image path
                height: 62.h,
                width: 261.w,
              ),
            ),
          ),
          Positioned(
            top: 740.h,
            left: 333.w,
            child: GestureDetector(
              onTap: () {
                // Handle skip action
              },
              child: Text(
                skip,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
              ),
            ),
          ),
          StartButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SliderScreen3()));
              },
              buttonText: 'Next',
              buttonHeight: 57.h,
              buttonWidth: 360.w,
            //  buttonColor: mainColor,
            numIcons: 1, gradientColors: const [Color(0xff4C109E),Color(0xff9253E4)],)

        ],
      ),
    );
  }

}
