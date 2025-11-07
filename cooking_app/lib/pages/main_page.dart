import 'package:cooking_app/resources/app_strings.dart';
import 'package:cooking_app/widgets/bottom_slider.dart';
import 'package:cooking_app/widgets/recipe_card_showcase.dart';
import 'package:cooking_app/widgets/recipe_filter_bar.dart';
import 'package:cooking_app/widgets/searchbar_component.dart';
import 'package:flutter/material.dart';
import '../widgets/header_component.dart';
import '../resources/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderComponent(),
            SearchBarComponent(),
            SizedBox(height: 15),
            RecipeFilterBar(
              categories: [
                AppStrings.filterAll,
                AppStrings.filterIndian,
                AppStrings.filterItalian,
                AppStrings.filterAsian,
                AppStrings.filterChinese,
                AppStrings.filterFruit,
                AppStrings.filterVegetables,
                AppStrings.filterProtein,
                AppStrings.filterCereal,
                AppStrings.filterLocalDishes,
              ],
            ),
            SizedBox(height: 25),
            RecipeCardShowcase(count: 5),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Text(
                'New Recipes',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            BottomSlider(),
          ],
        ),
      ),
    );
  }
}
