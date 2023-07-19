import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/profile_screen.dart';
class FollowUpList extends StatelessWidget {
  const FollowUpList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            TopRow(
              onMenuIconTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contex)=>ProfileScreen()));
              },
              icon2: Image.asset(icFilter),

            ),
            SizedBox(height: 20.h),
            Text(followUpsList, style: dashBoardTextStyle(),),
            SizedBox(height: 20.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: Offset(10, 0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 75,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.elevator_outlined,color: ligColor,),
                          SizedBox(height: 5),
                          Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ]
                        ,),),
                  ),),
                Transform.translate(
                  offset: Offset(10, 0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 63,
                      height: 48,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.point_of_sale_sharp,color: ligColor,),
                          SizedBox(height: 5),
                          Text(
                            'Tomorrow',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 53.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_calendar,color: ligColor,),
                        SizedBox(height: 5.h),
                        Text(
                          'All',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100.h),
            Column(
              children: [
                Image.asset(nData,width: 167.w,height: 162.h,),
                SizedBox(height: 20.h),
                Text(noDataFound,style: TextStyle(color: whiteColor),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
