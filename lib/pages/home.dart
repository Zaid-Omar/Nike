import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projekt/pages/MyButtonNavBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const myColor=Color(0xFF353C69);
    return  Scaffold(
      bottomNavigationBar: MyButtonNavBar(),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: myColor),
    backgroundColor: Colors.grey[300],
    centerTitle: true,
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
             children: [
               DrawerHeader(

                 margin: const EdgeInsets.all(30),
                 padding: EdgeInsets.zero,

                 child: Image.asset(
                   "lib/assets/LogoNike.png",
                   color: Colors.white,
                 ),
               ),

               const Padding(padding: EdgeInsets.only(left: 25),
                 child: ListTile(
                   leading: Icon(Icons.home,color: Colors.white),
                   title: Text("Home"),
                   textColor: Colors.white,
                 ),
               ),

               const Padding(padding: EdgeInsets.only(left: 25),
                 child: ListTile(
                   leading: Icon(Icons.info,color: Colors.white),
                   title: Text("About"),
                   textColor: Colors.white,
                 ),
               ),

               const Padding(padding: EdgeInsets.only(left: 25),
                 child: ListTile(
                   leading: Icon(Icons.settings,color: Colors.white),
                   title: Text("Settings"),
                   textColor: Colors.white,
                 ),
               ),

             ],
           ),
            const Padding(padding: EdgeInsets.only(left: 25,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.white),
                title: Text("Logout"),
                textColor: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );

  }

}
