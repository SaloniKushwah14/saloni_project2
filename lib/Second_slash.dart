import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondSlash extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 1500,
            width: 1200,
            child:
            Image.network("https://images.unsplash.com/photo-1619566636858-adf3ef46400b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGZydWl0c3xlbnwwfHwwfHx8MA%3D%3D")
          ),
        ),
    );
  }
}