


import 'package:flutter/material.dart';

import '../../components/custom_text_styles.dart';
import '../../model/task_model.dart';
import '../../util/colors.dart';

class TaskTile extends StatelessWidget {
   TaskTile(this.task);

   TaskModel task;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width*0.85,
      alignment: Alignment.center,

      decoration: BoxDecoration(
          color: CustomColors.OkButtonColor,

          borderRadius: BorderRadius.all(Radius.circular(20))
      ),

      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(task.title,18),
              Container(),
              CustomText(task.title,15),

            ],
          ),
          CustomText(task.description,10),

        ],
      ),

    );
  }
}
