


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scalerp/controller/remember_controller.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/start_button.dart';
import 'package:scalerp/view/bottom_navigation_screen.dart';
import '../custom_widgets/custom_textfields.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

        // final authController = Provider.of<AuthController>(context);
        return Scaffold(
          backgroundColor:mainColor,

          body: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Image.asset(imLogo,
                width: 220.w,
                height: 44.h,
                ),
               SizedBox(height: 18.h),
                Text(
                  signIn,
                  style: signinTextStyle(),
                ),
                SizedBox(height: 41.88.h),
                CustomTextField(
                  prefixIcon: Icons.email,
                  hintText: 'Email',
                  obscureText: false,
                  height: 53.h,
                  width: 343.w,
                ),
                SizedBox(height: 5.h),
                CustomTextField(
                  prefixIcon: Icons.lock,
                  hintText: 'Password',
                  obscureText: true,
                  height: 53.h, width: 343.w,),

                SizedBox(height: 19.h),
                Row(
                  children: [
                    SizedBox(
                      width: 32.54.w,
                    ),
                    Consumer<RemController>(
                    builder:(context,authController,_) {
                   return   SizedBox(
                        height: 14.h,
                        width: 16.w,
                        child: Transform.scale(
                          scale: 0.875, // Set scale to 0.875 for width 16
                          child: Switch(

                            value: authController.remberMe,
                            onChanged: (value) {
                             authController.changeRemberMe(value);
                            },
                            activeColor: const Color(0xFFB4B4B4),
                          ),
                        ),
                      );

                    } ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),

                    ),
                    const Spacer(
                    ),
                    GestureDetector(
                      onTap: () {

                      },

                      child: Text(
                        forgotPassword,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 31.w,
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                Center(
                  child: StartButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
                    },
                    buttonText: login,
                    buttonHeight: 48.h,
                    buttonWidth: 156.w,
                    gradientColors: const [Color(0xff8134E4), Color(0xffA168EB)],
                  ),
                ),
                SizedBox(height: 23.h),
                Center(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      text: TextSpan(
                        text: "Don't have an account?\n",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign up',
                            style: signupTextStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );


  }
}
