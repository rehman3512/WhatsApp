import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Calls_screen/calls_screen.dart';
import 'package:whatsapp/Screens/Chats_screen/chats_screen.dart';
import 'package:whatsapp/Screens/Community_screen/community_screen.dart';
import 'package:whatsapp/Screens/Updates_screen/updates_screen.dart';

class bottom_bar extends StatelessWidget {
 // const bottom_bar({super.key});
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              }, child: Text("Chats"),),
              TextButton(onPressed: (){
                select=2;

              }, child: Text("Updates"),),
              TextButton(onPressed: (){
                select=3;

              }, child: Text("Communities"),),
              TextButton(onPressed: (){
                select=4;
                
              }, child: Text("Calls"),),
            ],),
          ),),
      ],),
    );
  }
}