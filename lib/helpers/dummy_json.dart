import 'dart:convert';

List<DummyJson> dummyJsonFromJson(String str) =>
    List<DummyJson>.from(json.decode(str).map((x) => DummyJson.fromJson(x)));

String dummyJsonToJson(List<DummyJson> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DummyJson {
  int userId;
  int id;
  String title;
  String body;

  DummyJson({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory DummyJson.fromJson(Map<String, dynamic> json) => DummyJson(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
