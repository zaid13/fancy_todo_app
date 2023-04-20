

import 'package:flutter/material.dart';

import '../util/colors.dart';
import 'custom_text_styles.dart';

class ButtonTile extends StatelessWidget {
   ButtonTile(this.name);

  String name ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.85,
      alignment: Alignment.center,

      decoration: BoxDecoration(
          color: CustomColors.OkButtonColor,

          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: CustomText("Add Task",30),

    );
  }
}