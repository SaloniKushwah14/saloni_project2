import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/views/profile_screen.dart';
import 'package:project1/views/setting_screen.dart';
import 'home_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int currentIndexValue=0;
  List screenList=[
    const HomeScreen(),
    const SettingScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Bottom Bar Screen', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
      ),
      body:  screenList[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar (
        selectedItemColor: Colors.blue,
        onTap:(index){
          setState(() {
            currentIndexValue = index;
          });
        },

        currentIndex: currentIndexValue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}