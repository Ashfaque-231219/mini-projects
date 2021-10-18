import 'package:demoprojects/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SplashScreen.dart';
import 'Walkthroughscreen.dart';
int ? initScreen ;
 Future <void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
   SharedPreferences preferences = await SharedPreferences.getInstance();
initScreen = await preferences.getInt("initScreen");
await preferences.setInt("initScreen", 1);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Demo Projects",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      initialRoute: initScreen == 0|| initScreen == null ? 'onscreen':'SplashScreen',
      routes: {
        'SplashScreen' :(context) => SplashScreen(),
        'onscreen' :(context) => onscreen()
      },
    )
    ;
  }
}
