import 'package:flutter/material.dart';
import 'package:fancy_todo_app/util/colors.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body:  Container(
        width: MediaQuery.of(context).size.width*0.9,
        alignment: Alignment.center,
        child: Column(

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [


              ],)
          ],
        ),
      ),
    );
  }
}
