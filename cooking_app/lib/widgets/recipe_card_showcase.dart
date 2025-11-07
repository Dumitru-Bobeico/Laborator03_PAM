import 'package:flutter/material.dart';
import 'recipe_card.dart';
import 'package:cooking_app/resources/app_icons.dart';

class Recipe {
  final String title;
  final String imageUrl;
  final String time;
  final double rating;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.time,
    required this.rating,
  });
}

class RecipeCardShowcase extends StatelessWidget {
  final int count;

  const RecipeCardShowcase({super.key, this.count = 4});

  static final List<Recipe> _recipes = [
    Recipe(
      title: 'Classic Greek Salad',
      imageUrl: AppIcons.classicGreekSalad,
      time: '15 Mins',
      rating: 4.5,
    ),
    Recipe(
      title: 'Crunchy Nut Coleslaw',
      imageUrl: AppIcons.crunchyCholeslaw,
      time: '10 Mins',
      rating: 3.5,
    ),
    Recipe(
      title: 'Shrimp Chicken Andouille',
      imageUrl: AppIcons.shrimpDish,
      time: '10 Mins',
      rating: 3.0,
    ),
    Recipe(
      title: 'Barbecue Chicken Rice',
      imageUrl: AppIcons.barbecueChicken,
      time: '10 Mins',
      rating: 4.5,
    ),
    Recipe(
      title: 'Portuguese Piri Piri Chicken',
      imageUrl: AppIcons.portuguesePiri,
      time: '10 Mins',
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final recipesToShow = _recipes.take(count).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: recipesToShow.map((recipe) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: RecipeCard(
              title: recipe.title,
              imageUrl: recipe.imageUrl,
              time: recipe.time,
              rating: recipe.rating,
            ),
          );
        }).toList(),
      ),
    );
  }
}
