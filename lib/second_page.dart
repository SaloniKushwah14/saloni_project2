import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(

            title: Center(
              child: Text("SecondPage APP BAR",
              style: TextStyle(fontSize: 40,color: Colors.black)),
            ),
            backgroundColor:Colors.green,
          ),
          body: Container(
            color: Colors.red,
            height: 500,
            width: 500,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 60),


            child: Column(
                children:[
                  const Text("name: saloni",style: TextStyle(fontSize: 25),),
                  const Text("Surname:kushwah",style: TextStyle(fontSize: 25),),

                  Container(
                    height: 400,
                    width: 800,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all( 10),
                    margin: EdgeInsets.symmetric(vertical: 50),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: const [
                        Text("college name:"),
                        const Text("jiwaji university",
                          style: TextStyle(color: Colors.black,fontSize: 15),),
                        Text("Class:"
                            "4 sem",
                          style: TextStyle(color: Colors.black,fontSize: 15),),
                        Text("Course:"
                            "mca",
                          style: TextStyle(color: Colors.black,fontSize: 15),),

                      ],
                    ),

                  )





                ]
            )

             ),


              );

              

    
        
  }
}