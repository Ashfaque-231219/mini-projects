import 'package:flutter/material.dart';


import 'Screens/Account.dart';

import 'Screens/Registration form/Ragistrationpage.dart';


import 'Screens/Speechrecognition/speechrecognition.dart';
import 'Screens/texttospecch/texttospecch.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0 ;
  final screen = [
    RegistraionPage(),
    SpeechScreenState(),
    MyApp(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Mini Project",style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.red,Colors.purple
                  ]
              )
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,



        backgroundColor: Colors.purple[400],
        showUnselectedLabels: false,
        selectedFontSize: 23,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),

              label: "Home",


          ),
          BottomNavigationBarItem(icon: Icon(Icons.mic),

              label: "STT",


          ),
          BottomNavigationBarItem(icon: Icon(Icons.mic),

              label: "TTS",


          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),

              label: "Person",


          ),
        ],
      ),
      body: screen[currentindex],
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: Padding(padding: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHByb2ZpbGUlMjBwaWNzJTIwZm9yJTIwbWFsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
                    ),
                    SizedBox(height: 5.0,),
                    Text("Lee Wang",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800
                    ),),
                    SizedBox(height: 5.0,),
                    Text("Designer",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),),

                    
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.person,color: Colors.black,),
              title: Text("Your Profile"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.inbox,color: Colors.black,),
              title: Text("Inbox"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.assessment,color: Colors.black,),
              title: Text("Your Dashboard"),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text("Setting"),
            )
          ],
        ),
      ),

    );
  }
}



