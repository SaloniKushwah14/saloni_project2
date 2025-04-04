import 'package:flutter/material.dart';



class SocialCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Wrapping your widget inside a MaterialApp
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BUTTONS",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        body: Center(

          child: Container(
            height: 350,
            width: 1000,
            margin: EdgeInsets.all(50), // Margin around the container
            padding: EdgeInsets.symmetric(vertical: 30), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white, // Card color inside BoxDecoration
              border: Border.all(color: Colors.grey, width: 3),
              borderRadius: BorderRadius.circular(25), // Border styling
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text at the top
                  Text(
                    "pet the doggo at least twice!",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 10), // Add spacing between texts
                  // Description text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Description",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing between description and buttons
                  // Row with buttons
                  Row(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        icon: Icon(Icons.calendar_month, size: 15,color: Colors.black45),
                        label: Text("Due Date"),
                      ),
                      SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        icon: Icon(Icons.flag, size: 15),
                        label: Text("Priority"),
                      ),
                      SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        icon: Icon(Icons.access_alarm_rounded, size: 15),
                        label: Text("Reminder"),
                      ),
                      SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        icon: Icon(Icons.more_horiz, size: 20),
                        label: Text(""),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  // Divider to separate content
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(thickness: 1, color: Colors.grey[700]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("   #", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
                          Text("   Personal", style: TextStyle(fontSize: 20, color: Colors.grey)),
                          Icon(Icons.arrow_drop_up_outlined, size: 20, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        child: Text("Cancel",style: TextStyle(fontSize: 15,color: Colors.black),),
                      ),
                      SizedBox(width: 8), // Added spacing between the buttons
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                        child: Text("Add task",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
