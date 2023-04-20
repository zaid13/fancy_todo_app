


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {

  CustomText(this.text,this.size);

  String   text;
  double size;


  @override
  Widget build(BuildContext context) {
    return  Text(text,style: GoogleFonts.sortsMillGoudy(
      textStyle: Theme.of(context).textTheme.headline4,
      fontSize: size,
      fontWeight: FontWeight.normal,
      color: Colors.white,

      // fontStyle: FontStyle.italic,
    ),);
  }
}
