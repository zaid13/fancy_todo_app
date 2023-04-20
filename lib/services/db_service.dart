import 'package:fancy_todo_app/services/permissions.dart';
import 'package:provider/provider.dart';

import 'package:localstore/localstore.dart';

import '../model/task_model.dart';
import '../task_list_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
var db_service;
class DB_Service{


  DB_Service() {

    Future.delayed(Duration(milliseconds: 100),() async {
      await getPermssions();
      db = Localstore.instance;

    });


  }

  var db ;
  String dbName ="todos";

  Savetask( TaskModel ts,context) async {
    print("saving record");
    // gets new id
    final id = db.collection(dbName).doc().id;

    // save the item
   await db.collection(dbName).doc(id).set(ts.toJson());
   await fetch_allItems(context);

  }


 fetch_allItems(BuildContext context) async {
   print("reading ");
    List<TaskModel> tk = [];
   var docs=   await db.collection(dbName).get();
   print("reading 1");
   if(docs!=null){
     print(docs!.values.toList());
     context.read<TaskListProvider>().deleteAll();
     docs.values.toList().forEach((element) {
       print("reading 2$element");
       context.read<TaskListProvider>().addTaks(TaskModel.fromJsonTimeIsmilisec(element));
       tk.add(TaskModel.fromJsonTimeIsmilisec(element));
     });
   }

   return tk;
  }

}