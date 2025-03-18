import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  late String taskTitle;
  @HiveField(1)
  late String taskContent;
  @HiveField(2)
  late String taskTime;
  @HiveField(3)
  late String taskDate;
  @HiveField(4)
  late int taskColor;

  TaskModel({
    required this.taskTitle,
    required this.taskContent,
    required this.taskTime,
    required this.taskDate,
    required this.taskColor,
  });
}
