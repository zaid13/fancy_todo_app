

import 'package:flutter/material.dart';

import '../../components/custom_text_styles.dart';
import '../../util/colors.dart';
import '../../util/imagesPath.dart';

class WideButton extends StatelessWidget {

  const WideButton();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width*0.85,

      decoration: BoxDecoration(
          color: CustomColors.taskTileColor,

          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height:  MediaQuery.of(context).size.height*0.18,
                  child: Image.asset(ImagesPath.task_title_tick)),

              CustomText("Tasks",50),
              Container(),
              Container(),
            ],
          ),
          CustomText("Add or Remove Task",18),


        ],
      ),

    );
  }
}


class MenuRowButton extends StatelessWidget {

  MenuRowButton(this.color1,this.img_url1,this.text1,this.color2,this.img_url2,this.text2);

  Color color1;
  String text1 ;
  String img_url1;

  Color color2;
  String text2 ;
  String img_url2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width*0.85,


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LargerTiles(text1,color1,img_url1,),
          Container(),
          SmallestTiles(text2,color2,img_url2),



        ],
      ),

    );
  }
}
class MenuInverseRowButton extends StatelessWidget {

  MenuInverseRowButton(this.color1,this.img_url1,this.text1,this.color2,this.img_url2,this.text2);

  Color color1;
  String text1 ;
  String img_url1;

  Color color2;
  String text2 ;
  String img_url2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width*0.85,


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallestTiles(text2,color2,img_url2),
          Container(),
          LargerTiles(text1,color1,img_url1,),



        ],
      ),

    );
  }
}


class SmallestTiles extends StatelessWidget {
  SmallestTiles(this.text,this.color,this.img_url);
  Color color;
  String text ;
  String img_url;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width*0.35,

      decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height:  MediaQuery.of(context).size.height*0.15,
              child: Image.asset(img_url)),

          CustomText(text,40),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
class LargerTiles extends StatelessWidget {
  LargerTiles(this.text,this.color,this.img_url);

  Color color;
  String text ;
  String img_url;
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: MediaQuery.of(context).size.height*0.23,
      width: MediaQuery.of(context).size.width*0.55,

      decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height:  MediaQuery.of(context).size.height*0.15,
              child: Image.asset(img_url)),

          CustomText(text,40),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
