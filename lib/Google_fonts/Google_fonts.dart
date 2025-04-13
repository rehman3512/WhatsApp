import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class google_fonts extends StatefulWidget {
  const google_fonts({super.key});

  @override
  State<google_fonts> createState() => _google_fontsState();
}

class _google_fontsState extends State<google_fonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Hello world',style: GoogleFonts.aBeeZee(
        fontSize: 50,
      ),
      ),),
    );
  }
}
