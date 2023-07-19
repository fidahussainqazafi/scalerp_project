
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';
import 'package:scalerp/custom_widgets/custom_textfields.dart';
import 'package:scalerp/custom_widgets/dashborad_text_custom_widget.dart';
import 'package:scalerp/custom_widgets/top_row.dart';
import 'package:scalerp/view/check_out.dart';
import '../custom_widgets/start_button.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String? country;
  List<String> listItems = ["Pak", "USA", "UK"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            TopRow(
              onMenuIconTap: () {},
              icon2: Image.asset(icScan, width: 47.w, height: 36.h),
              name2: scan,
            ),
            SizedBox(height: 9.h),
            Row(
              children: [
                SizedBox(width: 133.w),
                DashboardTextCustomWidget(
                  title: addContact,
                  titleStyle: dashBoardTextStyle(),
                  additionalText: '',
                ),
              ],
            ),
            SizedBox(height: 25.h),
            CustomTextField(
              prefixIcon: Icons.person,
              hintText: name,
              obscureText: false,
              height: 53.17.h,
              width: 343.1.w,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              prefixIcon: Icons.email_outlined,
              hintText: emailAddress,
              obscureText: false,
              height: 53.17.h,
              width: 343.1.w,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              prefixIcon: Icons.call,
              hintText: phoneNumber,
              obscureText: false,
              height: 53.17.h,
              width: 343.1.w,
            ),
            SizedBox(height: 5.h),
            CustomTextField(
              prefixIcon: Icons.location_on_outlined,
              hintText: address,
              obscureText: false,
              height: 53.17.h,
              width: 343.1,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 26.w),
                CustomTextField(
                  prefixIcon: Icons.reduce_capacity_sharp,
                  hintText: city,
                  obscureText: false,
                  height: 50.h,
                  width: 185.w,
                ),
                SizedBox(width: 5.w),
                CustomTextField(
                  prefixIcon: Icons.calendar_view_month,
                  hintText: zipCode,
                  obscureText: false,
                  height: 50.h,
                  width: 150.w,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              width: 342.2,
              height: 70,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                  const Icon(Icons.wordpress),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: DropdownButton<String>(
                      value: country,
                      hint: const Text('Country'),
                      isExpanded: true, // Added property

                      onChanged: (String? newValue) {
                        setState(() {
                          country = newValue;
                        });
                      },
                      items: listItems.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      underline: Container(), // Remove the bottom border
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h),
            StartButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckOut()),
                );
              },
              buttonText: addContact,
              buttonHeight: 56.h,
              buttonWidth: 344.w,
              gradientColors: const [Color(0xff823BE3), Color(0xffA168EB)],
              numIcons: 0,
            ),
          ],
        ),
      ),
    );
  }
}
