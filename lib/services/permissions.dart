


import 'package:permission_handler/permission_handler.dart';

Future getPermssions() async {


  Map<Permission, PermissionStatus> statuses = await [

    Permission.storage,
    Permission.accessMediaLocation,
    Permission.manageExternalStorage,
  ].request();
  print(statuses);



}