import 'package:cooking_app/controllers/recipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RecipeController());
    return GetMaterialApp(home: MainPage());
  }
}
