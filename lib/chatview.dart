import 'package:flutter/material.dart';

class chatview extends StatelessWidget {
  String name,img;
  chatview({super.key,required this.name,required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [
          SizedBox(width: 15),
          CircleAvatar(backgroundImage: AssetImage(img),),
        ],),
        title: Text(name),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          SizedBox(width: 5,),
        ],
      ),
    );
  }
}
