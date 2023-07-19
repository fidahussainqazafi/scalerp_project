
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/view/login.dart';


class SliderScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

          return Scaffold(

            body: SafeArea(

                child: Container(
                  // Background Image 1
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imSlider3_1),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Background Image 2
                      Positioned.fill(
                        child: Image.asset(
                          imSlider3_2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Logo
                      Positioned(
                        top: -85.h, // Adjust the top position as desired
                        left: 70.w,
                        child: Image.asset(
                          imLogoBlack,
                          width: 250.w,
                          height: 257.h,
                        ),
                      ),

                      // Skip text
                      Positioned(
                        top: 700.h,
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

                      // Start button
                      StartButton(
                        onPressed: () {
                           Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context) => LoginScreen()));

                        },
                        buttonText: 'Login',
                        buttonHeight: 57.h,
                        buttonWidth: 360.w,
                       // buttonColor: mainColor,
                        numIcons: 2, gradientColors: const [Color(0xff4C109E),Color(0xff9253E4)],
                      ),

                    ],
                  ),
                ),
              )
          );

        }
}