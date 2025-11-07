import 'dart:convert';

import 'package:get/get.dart';
import '../v2.dart';
import '../models/recipe.dart';

class RecipeController extends GetxController {
  var recipeData = Rx<RecipeData?>(null);
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadRecipeData();
  }

  Future<void> loadRecipeData() async {
    try {
      final data = {
        "list": list,
        "details": details,
      };
      final String response = jsonEncode(data);
      recipeData.value = RecipeData.fromRawJson(response);
    } catch (e) {
      print("Error loading recipe data: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
