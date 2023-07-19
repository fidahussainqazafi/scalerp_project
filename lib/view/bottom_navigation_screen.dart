import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scalerp/view/home_screen.dart';
import 'package:scalerp/view/products_screen.dart';
import 'package:scalerp/view/profile_screen.dart';
import 'package:scalerp/view/sales_screen.dart';
import 'package:scalerp/view/search_screen.dart';
import '../controller/botton_nav_controller.dart';
import '../conts/const.dart';


class BottomNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottonNavController>(context);
    int currentIndex = bottomNavBarProvider.currentIndex;

    final List<Widget> _screens = [
      const HomeScreen(),
      const SearchScreen(),
      const ProductScreen(),
      const SalesScreen(),
      const  ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: mainColor,
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: whiteColor,
        unselectedItemColor: ligColor,
        backgroundColor: mainColor
        , // Change the background color here
        currentIndex: currentIndex,
        onTap: (int index) {
          bottomNavBarProvider.setCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 20.sp,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 20.sp,),
            label: search,
          ),
          BottomNavigationBarItem(
            icon:
                Image.asset(icProduct),
            //Icon(Icons.production_quantity_limits),
            label: products,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: sales,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: profile,
          ),
        ],
      ),
    );
  }
}
