import 'dart:convert';

class TaskModel {
  final String id;
  final DateTime eventDate;
  final String goal;
  final String eventPlace;
  final String companies;
  final String eventTime;
  final String descriptions;

  TaskModel({
    required this.id,
    required this.eventDate,
    required this.goal,
    required this.eventPlace,
    required this.companies,
    required this.eventTime,
    required this.descriptions,
  });

  factory TaskModel.fromRawJson(String str) =>
      TaskModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        id: json["id"],
        eventDate: DateTime.parse(json["eventDate"]),
        goal: json["goal"],
        eventPlace: json["eventPlace"],
        companies: json["companies"],
        eventTime: json["eventTime"],
        descriptions: json["descriptions"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "eventDate":
            "${eventDate.year.toString().padLeft(4, '0')}-${eventDate.month.toString().padLeft(2, '0')}-${eventDate.day.toString().padLeft(2, '0')}",
        "goal": goal,
        "eventPlace": eventPlace,
        "companies": companies,
        "eventTime": eventTime,
        "descriptions": descriptions,
      };
}
