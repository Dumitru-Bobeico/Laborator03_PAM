import 'dart:convert';

import 'app_data.dart';
import 'details.dart';

class RecipeData {
  final AppData list;
  final Details details;

  RecipeData({required this.list, required this.details});

  factory RecipeData.fromRawJson(String str) =>
      RecipeData.fromJson(json.decode(str));

  factory RecipeData.fromJson(Map<String, dynamic> json) => RecipeData(
    list: AppData.fromJson(json["list"]),
    details: Details.fromJson(json["details"]),
  );
}
