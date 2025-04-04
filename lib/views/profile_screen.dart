import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  ProfileScreen({super.key});
  final List<Map<String, dynamic>> dealerData = [
    {"id": "1100", "name": "Betts", "freight": 673.60, "date": "11/11/20", "image": "assets/boy2.jpeg"},
    {"id": "1101", "name": "Adams", "freight": 617.90, "date": "6/16/20", "image": "assets/boy1.jpeg"},
    {"id": "1102", "name": "Crowley", "freight": 309.25, "date": "3/8/20", "image": "assets/boy2.jpeg"},
    {"id": "1103", "name": "Stark", "freight": 22.03, "date": "8/27/20", "image": "assets/girl logo.webp"},
    {"id": "1104", "name": "Keefe", "freight": 915.71, "date": "11/11/20", "image": "assets/boy1.jpeg"},
    {"id": "1105", "name": "Doran", "freight": 889.06, "date": "6/16/20", "image": "assets/boy2.jpeg"},
    {"id": "1106", "name": "Newberry", "freight": 196.34, "date": "11/11/20", "image": "assets/girl2.jpeg"},
  ];



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Dealer Data Table"),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20,
          columns: ["dealer","ID","Name","Frieght","Shipped Date"].map((title)=>
              DataColumn(label:Text(title,style:
              const TextStyle(fontWeight: FontWeight.bold)))).toList(),
          // DataColumn(label: Text("Dealer")),
          // DataColumn(label: Text("ID")),
          // DataColumn(label: Text("Name")),
          // DataColumn(label: Text("Freight")),
          // DataColumn(label: Text("Shipped Date")),

          rows: dealerData.map((dealer){
            return DataRow(cells: [
              DataCell(CircleAvatar(backgroundImage: AssetImage(dealer["image"]))),
              DataCell(Text(dealer["id"])),
              DataCell(Text(dealer["name"])),
              DataCell(Text("\$${dealer["freight"].toStringAsFixed(2)}")),
              DataCell(Text(dealer["date"])),
            ]);
          }).toList(),
        ),

      ),
    );
  }
}