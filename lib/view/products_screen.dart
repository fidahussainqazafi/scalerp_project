import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/products_view_squares.dart';
import '../custom_widgets/rectangle_widget.dart';
import '../custom_widgets/search_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 39.h),
              TopRow(
                onMenuIconTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsViewScreen()));
                },
                icon1: Image.asset(icLocation, width: 40.w, height: 39.h),
                name1: location,
                icon2: Image.asset(icCart, width: 39.w, height: 39.h),
                name2: cart,
              ),
              SizedBox(height: 11.h),
              Row(
                children: [
                  SizedBox(width: 160.w),
                  DashboardTextCustomWidget(
                    title: products,
                    titleStyle: productTextStyle(),
                    additionalText: localCasa,
                    additionalTextStyle: localCasaTextStyle(),
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  SearchButton(
                    icon: Icons.search,
                    hintText: 'Search',
                    trailing: Image.asset(icFilter),
                    width: 239.w, // Customize width if needed
                    height: 48.h, // Customize height if needed
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.grid_view, color: whiteColor),
                      SizedBox(height: 4.h),
                      Text(
                        view,
                        style: viewTextStyle(),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(icScan, width: 47.w, height: 36.h),
                      SizedBox(height: 4.h),
                      Text(
                        scan,
                        style: scanTextStyle(),
                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: 33.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
                containerColor: Colors.deepPurple,

              ),

              SizedBox(height: 11.h),


              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),

              ),

              SizedBox(height: 11.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
                containerColor: Colors.deepPurple,

              ),

              SizedBox(height: 11.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
              //  containerColor: Colors.deepPurple,

              ),

              SizedBox(height: 11.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
                containerColor: Colors.deepPurple,

              ),

              SizedBox(height: 11.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
               // containerColor: Colors.deepPurple,

              ),

              SizedBox(height: 11.h),

              RectangleWidget(
                text1: loremIpsumOrPrint,
                textStyle1: loriumIpsumTextStyle(),
                containerColor: Colors.deepPurple,

              ),


              SizedBox(height: 15.h),
              Center(
                child: Container(
                  width: 135.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffB9C0C9),
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                ),
              ),
              SizedBox(height: 8.h),

            ],
          ),
        ),
      ),
    );
  }
}
