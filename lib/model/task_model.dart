

import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable()

class TaskModel{
  TaskModel(this.id, this.title,this.description,this.type,this.time);

  String id;
  String title;
  String description;
  String type;
  DateTime time;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
  factory TaskModel.fromJsonTimeIsmilisec(Map<String, dynamic> json) => _$TaskModelFromJsonWithTime(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

}