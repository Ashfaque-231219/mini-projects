import 'package:flutter/material.dart';

import 'Walkthroughscreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async{
      await Future.delayed(Duration(milliseconds: 1500),(){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> onscreen()));
    }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color:Colors.red,
            child: Image.asset(""),
          ),
          Align(
            child: Text("Chineese  Learning"),
          )

        ],
      ),
    );
  }
}
