import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cooking_app/models/models.dart';

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
      final String response = await rootBundle.loadString('assets/data.json');
      final data = await json.decode(response);
      recipeData.value = RecipeData.fromJson(data);
    } catch (e) {
      Get.log("Error loading recipe data: $e");
    } finally {
      isLoading.value = false;
    }
  }
}