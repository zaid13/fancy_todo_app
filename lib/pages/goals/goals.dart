


import 'dart:convert';

import 'package:fancy_todo_app/model/task_model.dart';
import 'package:fancy_todo_app/services/db_service.dart';
import 'package:fancy_todo_app/task_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/button_tile.dart';
import '../../components/custom_text_styles.dart';
import '../../util/colors.dart';
import '../add_task/add_task.dart';
import '../add_task/componenets.dart';
import '../main_page/componenets.dart';


class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {


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


              CustomText("GOALS", 50),
              Container(),
              Container(),

              SizedBox(
                height: MediaQuery.of(context).size.height*0.7,
                child:ListView.builder(

                         itemCount: context.watch<TaskListProvider>().tasks.length,
                         itemBuilder: (ctx,n)=>TaskTile(context.watch<TaskListProvider>().tasks[n])
                     )





              ),


              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTask()));
                  },
                  child: ButtonTile("ADD TASK"))


            ],
          ),
        ),
      ),
    );
  }
}