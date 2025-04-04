

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget{
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Profile picture",style: TextStyle(fontSize: 20),),
            )
          ),
          body: Center(
            child:Container(
              height: 500,
              width: 300,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black45,),
                  borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [

                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )


        );
  }
}