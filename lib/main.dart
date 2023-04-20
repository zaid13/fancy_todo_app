import 'package:fancy_todo_app/pages/main_page/main_page.dart';
import 'package:fancy_todo_app/services/db_service.dart';
import 'package:fancy_todo_app/task_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'animated_container.dart';




Future<void> main() async {
 await WidgetsFlutterBinding.ensureInitialized();


  db_service =  DB_Service();

  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => TaskListProvider()),
        ],
        child: const MyApp(),
      ),
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorLight: Colors.white

      ),
      home:  MainPage(),
    );
  }
}
