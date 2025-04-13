import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chatview.dart';

class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  List<String> name = ["Rehman","Bilal","Muhammad","Luqman","Kashif",
  "Ahmad", "Mahad","Ammad","Waleed","Mani",];
  List<String> image = ["assets/Rehman.jpg","assets/Bilal.jpg","assets/img5.jpg",
  "assets/Luqman.jpg", "assets/Kashif.jpg","assets/img6.jpg","assets/Mahad.jpg",
  "assets/img7.jpg","assets/Waleed.jpg","assets/Mani.jpg"];
  List<String> num = ["2:37 PM","Yesterday","3/7/25","2/28/25","2/7/25","12/18/24","8/20/24","7/4/24",
  "2/17/24","12/17/23"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.green,
        fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          SizedBox(width: 10,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          SizedBox(width: 5,),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){},child:  Icon(Icons.circle_outlined),),
          SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){},
            child: Icon(Icons.chat,color: Colors.white,),
            backgroundColor: Colors.green,),
        ],
      ),
      body: Column(children: [
        Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              // height: 45, width: MediaQuerry.of(context).size.width*0.95,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                // border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
            //  child: Padding(
               // padding: EdgeInsets.symmetric(vertical: 3),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Ask Meta AI or search",
                    hintStyle: TextStyle(fontSize: 15,),
                  ),
                ),
             // ),
            )),
        Expanded(
          flex: 90,
          child:  ListView.builder(

          itemBuilder: (context,index){
            int ischecked=index%3;
            return ListTile( onTap: (){
              Get.to(()=>chatview(name: name[index], img: image[index]));
            },
              leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
              title: Text(name[index]),subtitle: Text("last message"),
              trailing: Column(children: [
                Text(num[index]),
                SizedBox(height: 2,),
                ischecked==0? CircleAvatar(radius: 10,backgroundColor: Colors.green,
                  child: Text("3",style: TextStyle(fontSize: 12),),): SizedBox(),
              ],),);
          }, itemCount: name.length,
        ),)
      ],)
    );
  }
}
