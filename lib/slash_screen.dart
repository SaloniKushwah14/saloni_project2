import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   _navigateToHomeScreen();
  // }

  // Function to navigate to the Home screen after a delay
  // _navigateToHomeScreen() {
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => HomeScreen()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          height: 1000,
          width: 300,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 50),
          decoration:BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey,width: 5),
            borderRadius:BorderRadius.circular (20),
          ) ,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJBpVSMyzgSBzh3xTrZdVk3u_qxZPhaXb93g&s"),
             ),
           Text(
           'Go fast',
           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
           ),
         ),

           ],
         ),
       ),
    );
  }
}

