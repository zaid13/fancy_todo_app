
import 'package:fancy_todo_app/components/custom_text_styles.dart';
import 'package:fancy_todo_app/pages/main_page/componenets.dart';
import 'package:flutter/material.dart';
import 'package:fancy_todo_app/util/colors.dart';
import '../../services/db_service.dart';
import '../../util/imagesPath.dart';
import '../goals/goals.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.backgroundColor,
        body:  Container(

          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(),
Icon(Icons.settings,color: Colors.white,size: 45,),



                ],),


               CustomText("TASK APP", 50),
              Container(),
              Container(),

              SizedBox(
                height: MediaQuery.of(context).size.height*0.7,
                child: ListView(
                  children: [
                    GestureDetector(
                        onTap: (){
                          db_service.fetch_allItems(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Goals()));
                        },
                        child: WideButton()),
                    Container(height: 10,),
                    MenuRowButton(CustomColors.directionTileColor,ImagesPath.decision_tile,"Decisions",CustomColors.feedTileColor,ImagesPath.feed_tile,"Feed"),
                    Container(height: 10,),
                    MenuInverseRowButton(CustomColors.journalTileColor,ImagesPath.journal_tile,"Journal",CustomColors.goalsTileColor,ImagesPath.goals_tile,"Goals")


                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}

