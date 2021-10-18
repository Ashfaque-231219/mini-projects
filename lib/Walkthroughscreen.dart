import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';
class onscreen extends StatelessWidget {
  const onscreen({Key? key}) : super(key: key);
  List<PageViewModel> getPages(){
    return[
      PageViewModel(
        image: Image.asset("Images/img2.jpg"),
        title: "Learn Chineese Language in Just Seven Chapter",
        body: "From Beginers to Advanced",
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple
            ),
            descriptionPadding: EdgeInsets.all(12),
            imagePadding: EdgeInsets.all(15),
            pageColor: Colors.white

        ),
      ),
      PageViewModel(
        image: Image.asset("Images/img1.jpg"),
        title: "In  This course you have P1 to P6 Level",
        body: "P1 is very Basic chapter",
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple
            ),
            descriptionPadding: EdgeInsets.all(12),
            imagePadding: EdgeInsets.all(15),
            pageColor: Colors.white

        ),
      ),
      PageViewModel(
        image: Image.asset("Images/img3.jpg"),
        title: "Clear Your All doubts by Giving the Mock test",
        body: "Each chapter have Mock test",
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple
            ),
            descriptionPadding: EdgeInsets.all(12),
            imagePadding: EdgeInsets.all(15),
            pageColor: Colors.white

        ),
      ),
      PageViewModel(
          image: Image.asset("Images/img2.jpeg"),
          title: "Choose our  Courese to Learn chineese",
          body: "For Firstaly five customer it is free",
          footer: ElevatedButton(
            child: Text("Reading",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            ),
            onPressed: (){

            },
          ),
          decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
              ),
              descriptionPadding: EdgeInsets.all(12),
              imagePadding: EdgeInsets.all(15),
              pageColor: Colors.white

          )
      )



    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          done: Text("Read",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
          ),),


          pages: getPages(),
          onDone: () {

              Navigator.pushReplacement<void, void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MyHomePage(),
                ),
              );

          },
          showSkipButton: true,
          skip: Text("Skip"),
          next: TextButton(
            onPressed: (){},
            child: Text("next"),
          )
        ),
      ),

    );
  }
}


