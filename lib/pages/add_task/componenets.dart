


import 'package:flutter/material.dart';

import '../../components/custom_text_styles.dart';
import '../../model/task_model.dart';
import '../../util/colors.dart';
import 'package:intl/intl.dart';



class TaskTile extends StatelessWidget {
   TaskTile(this.task);

   TaskModel task;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        width: MediaQuery.of(context).size.width*0.85,
        alignment: Alignment.center,

        decoration: BoxDecoration(
            color: CustomColors.taskListsColor,

            borderRadius: BorderRadius.all(Radius.circular(20))
        ),

        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(task.title,30),
                  Container(),
                  CustomText(DateFormat('h:mm a   EEE, MMM d, ''yy').format(task.time),15),

                ],
              ),
              Expanded(child: CustomText(task.description,20)),
              Container(),

            ],
          ),
        ),

      ),
    );
  }
}
