

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("BAR"),
            ),
          ),
          body: Center(
            child: Container(
              height: 1000,
              width: 350,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.symmetric(vertical: 30,),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 6),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ //Text at the top

                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Icon(Icons.arrow_back_outlined),
                     Text("Back",style: TextStyle(fontSize: 15,),),



                   ],
                 ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        Text("Welcome to go Taxi",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration:BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius:BorderRadius.circular (5),
                    ) ,
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("NAME")
                            ],
                          )
                            
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("example @gmail.com",style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ],
                        )
                        
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 350,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            Text("Email")
                            
                          ],
                        ),
                        Row(
                          children: [
                            Text("example @ gamil.com",style: TextStyle(fontSize: 15),)
                          ],
                        )
                      ],
                    ) ,
                  ),
                  Container(
                      height: 60,
                      width: 350,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black,width: 2,),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Mobile Number"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.flag),
                              Text("45666687")
                            ],
                          )
                        ],
                      )
                  ),
                  Column(
                    children: [
                      ListTile(
                        title: Text("Gender"),
                        textColor: Colors.grey,
                        trailing:  Icon(Icons.arrow_drop_down),

                        ),


                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text("By creating an accounting ,you agree with out ",style:
                            TextStyle(fontSize: 12,color: Colors.grey),),
                          ),

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text("Terms of Services and Privacy Policy" ,
                              style: TextStyle(fontSize: 12,color: Colors.grey),),
                          ),

                        ],
                      )

                    ],
                  ),



                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 260,
                            child:  ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2),),),
                              child: Text("Sign Up",style: TextStyle(fontSize: 10,color: Colors.black),),
                            ),

                          )


                        ],
                      ),
                     SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                icon: Icon(Icons.g_mobiledata,size: 12,color: Colors.black,),
                                label: Text("Google"),
                              ),

                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                                icon: Icon(Icons.facebook,size: 12,color: Colors.black,),
                                label: Text("Facebook"),
                              ),
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Don't have an account ? ",style: TextStyle(fontSize: 15,color: Colors.black),),
                              Text("Sign up",style: TextStyle(fontSize: 15,color: Colors.yellow),),
                            ],
                          ),
                          SizedBox(height: 10,)
                        ],
                      )

                    ],
                  ),


                ],
              ),
            ),
          ),

        );
  }
}