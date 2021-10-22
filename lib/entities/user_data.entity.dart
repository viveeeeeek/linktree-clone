import 'dart:convert';

List<UserData> userdataFromJson(String str) =>
    List<UserData>.from(json.decode(str).map((x) => UserData.fromJson(x)));

String userdataToJson(List<UserData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserData {
  UserData({
    required this.title,
    required this.link,
  });

  String title;
  String link;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        title: json["title"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "link": link,
      };
}
