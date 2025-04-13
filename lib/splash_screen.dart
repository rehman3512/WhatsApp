import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Screens/whatsapp_screen/whatsapp.dart';
import 'package:get/get.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Get.to(()=>whatsapp());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset("assets/whatsapp1.png",height: 250,),),
    );
  }
}