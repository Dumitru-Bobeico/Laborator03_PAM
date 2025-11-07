
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
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
      final String response = await rootBundle.loadString('assets/data.json');
      recipeData.value = RecipeData.fromRawJson(response);
    } catch (e) {
      print("Error loading recipe data: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
