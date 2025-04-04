

import 'package:flutter/material.dart';

class CardImageShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title: Text("Icon,Card, Image"),
      ),
      body: Container(
        height: 500,
        width: 600,
        color: Colors.blue,

      child: Column(
        children: [
          Text("saloni kuswah",style: TextStyle(fontSize: 30,color: Colors.black),),
          Text("flutter developer",style: TextStyle(fontSize:30,color: Colors.black),),
          // Image.asset("assets/download.jpg"),
          Icon(Icons.add,color: Colors.red,size: 80,),
          Image.network("https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg")
        ],
      ),

      ),
        
    );
    
  }
}