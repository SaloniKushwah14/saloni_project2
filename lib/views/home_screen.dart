import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('coffe cafe'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                accountName: Text("saloni",style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("salonikushwah@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture:CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('S',style: TextStyle(fontSize: 25,color: Colors.blue),
                  ),
                ),

              ),


            ),
            ListTile(
              leading:Icon(Icons.person) ,
              title: Text("profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],


        ),
      ),
        // body: Center(child: Text('Home Screen')),
      // body: Center(

      // child: Container(

      // ),
      // );
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.orange,
            // border: Border.all(color: Colors.black,width: 2),
            // borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage('assets/coffee beans.jpeg'),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "coffee canvas",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.brown),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(220, 198, 192, 100),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    color: Colors.brown,
                    child: Text("coffe"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    color: Colors.brown,
                    child: Center(child: Text("frappe")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    color: Colors.brown,
                    child: Center(child: Text("latte")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    color: Colors.brown,
                    child: Center(child: Text("Ice tea")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    color: Colors.brown,
                    child: Center(child: Text("cold coffe")),
                  ),
                ],
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),

                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,

                    children: List.generate(4, (index) {
                      List<String> images = [
                        ' latte.jpeg',
                        'cold_coffe.jpg',
                        ' cold_coffe.jpg',
                        ' cold_coffe.jpg',
                      ];
                      List<String> names = [
                        'cold coffe',
                        'cold coffe',
                        'cold coffe',
                        'cold coffe',
                      ];




                      return Container(

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),


                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                images[index],
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              names[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          // child: Text(
                          //   'Box ${index + 1}',
                          //   style: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 7,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      );

                    } ,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}