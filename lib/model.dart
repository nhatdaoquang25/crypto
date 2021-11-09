import 'dart:convert';

List<Model> modelFromJson(String str) =>
    List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    this.categoryId,
    this.name,
  });

  String categoryId;
  String name;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        categoryId: json["category_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "name": name,
      };
}
