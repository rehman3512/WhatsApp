import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/Screens/Calls_screen/calls_screen.dart';
import 'package:whatsapp/Screens/Chats_screen/chats_screen.dart';
import 'package:whatsapp/Screens/Community_screen/community_screen.dart';
import 'package:whatsapp/Screens/Updates_screen/updates_screen.dart';
import 'package:whatsapp/whatsapp.dart';

class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}): super(key:key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/Mani.jpg'),),
            accountName: Text('Rehman'),
            accountEmail: Text('rehman@gmail.com'),),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>whatsapp()));
            },
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],),
      ),
      body:
      Column(children: [
        Expanded(
          flex: 90,
          child: select==1?chats_screen(): select==2?update_screen():
          select==3?community_screen(): calls_screen(),),
        Expanded(
          flex: 10,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  select=1;
                  setState(() {

                  });
                }, child: Text("Chats"),),
                TextButton(onPressed: (){
                  select=2;
                  setState(() {

                  });
                }, child: Text("Updates"),),
                TextButton(onPressed: (){
                  select=3;
                  setState(() {

                  });
                }, child: Text("Communities"),),
                TextButton(onPressed: (){
                  select=4;
                  setState(() {

                  });
                }, child: Text("Calls"),),
              ],),
          ),),
      ],),
    );
  }
}