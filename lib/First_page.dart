import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar :AppBar(

            title: Center(
              child: Text("first page App Bar",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.black

              ),),
            ),
            backgroundColor: Colors.green,
            shadowColor: Colors.greenAccent,

            ),
          body:Center(
            child: Container(
              height: 200,
              width: 700,
              alignment: Alignment.center,
              color: Colors.blue,
             padding:EdgeInsets.all(80),
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Center(
                child: Text("we want to use sized box",
                style: TextStyle(fontSize: 30),),
              ),


              ),
          ),
            );


  }
}

