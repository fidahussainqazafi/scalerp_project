import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scalerp/controller/botton_nav_controller.dart';
import 'package:scalerp/view/splash_screen.dart';
import 'controller/remember_controller.dart';
import 'controller/tabbar_controller.dart';
import 'controller/theme_switch_controller.dart';
import 'conts/const.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        minTextAdapt: true,
    designSize: const Size(390,844),

        builder: (context,child){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottonNavController()),
        ChangeNotifierProvider(create: (context) => RemController()),
        ChangeNotifierProvider(create: (context) => SwitchController()),
        ChangeNotifierProvider(create: (context) => TabbarController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'Flutter Demo',
        theme: ThemeData(
         primarySwatch: Colors.deepPurple,
        ),
        home:  SplashScreen(),

      ),
    );
  }
    );
  }
}
