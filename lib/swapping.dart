import 'package:flutter/material.dart';

class swapping extends StatefulWidget {
  const swapping({super.key});

  @override
  State<swapping> createState() => _swappingState();
}

class _swappingState extends State<swapping> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
  double rel1=0;
  double rel2=0;
  double n1=0;
  double n2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(children: [
          Text("Enter First number = "),
          Container(width: 60,
          child: TextFormField(
            controller: n1Controller,
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
            ),
          ),
          ),
        ],),
        SizedBox(height: 30,),
        Row(children: [
          Text("Enter Second number = "),
          Container(width: 60,
            child: TextFormField(
              controller: n2Controller,
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
              ),
            ),
          ),
        ],),
        SizedBox(height: 30,),
        Text("Before Swapping first number=$n1"),
        Text("Before Swapping second number=$n2"),
        SizedBox(height: 30,),
        InkWell(onTap: (){
          rel1=double.parse(n1Controller.text);
          rel2=double.parse(n2Controller.text);
           n1=rel1;
           n2=rel2;
           double empty=rel1;
           rel1=rel2;
           rel2=empty;

          setState(() {

          });
        },
          child: Container(height: 35,width: 70,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
            child: Center(child: Text("Swape")),
          ),
        ),
        SizedBox(height: 50,),
        Text("Before Swapping first number=$rel1"),
        Text("Before Swapping second number=$rel2"),

      ],
      ),
    );
  }
}
