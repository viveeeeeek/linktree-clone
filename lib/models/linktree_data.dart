import 'dart:convert';

List<LinktreeData> linktreedataFromJson(String str) => List<LinktreeData>.from(
    json.decode(str).map((x) => LinktreeData.fromJson(x)));

String linktreedataToJson(List<LinktreeData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LinktreeData {
  String title;
  String link;

  LinktreeData({
    required this.title,
    required this.link,
  });

  factory LinktreeData.fromJson(Map<String, dynamic> json) =>
      LinktreeData(title: json["title"], link: json["link"]);

  Map<String, dynamic> toJson() => {
        "title": title,
        "link": link,
      };
}
