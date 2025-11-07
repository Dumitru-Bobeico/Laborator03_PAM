import 'package:cooking_app/models/recipe.dart' as model;
import 'package:flutter/material.dart';
import 'recipe_card.dart';

class RecipeCardShowcase extends StatelessWidget {
  final List<model.Recipe> recipes;

  const RecipeCardShowcase({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: recipes.map((recipe) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: RecipeCard(
              recipe: recipe,
            ),
          );
        }).toList(),
      ),
    );
  }
}
