import 'package:cooking_app/models/recipe.dart' as model;
import 'package:cooking_app/resources/colors.dart';
import 'package:cooking_app/widgets/back_to_menu.dart';
import 'package:cooking_app/widgets/food_card.dart';
import 'package:cooking_app/widgets/food_title.dart';
import 'package:cooking_app/widgets/ingredient.dart';
import 'package:cooking_app/widgets/serve_items_display.dart';
import 'package:cooking_app/widgets/user_profile_header.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final model.Details data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final cookTime = int.tryParse(data.recipe.cookTime.split(' ').first) ?? 0;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const BackToMenuBar(),
            FoodCard(
              imageUrl: data.recipe.image,
              rating: data.recipe.rating,
              timeInMinutes: cookTime,
              isBookmarked: data.recipe.isBookmarked,
            ),
            const SizedBox(height: 15),
            FoodTitleWithReviews(
              titleLine1: data.recipe.title,
              titleLine2: '',
              reviewsCount: data.recipe.reviews,
            ),
            UserProfileStaticHeader(
              userName: data.chef.name,
              location: data.chef.location,
              profileImageUrl: data.chef.profileImage,
              isFollowing: data.chef.isFollowing,
              tabs: data.tabs,
            ),
            const SizedBox(height: 25),
            ServeAndItemsDisplay(
              serves: data.serving.serves,
              items: '${data.serving.totalItems} Items',
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: data.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = data.ingredients[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Ingredient(
                      imageUrl: ingredient.icon,
                      productName: ingredient.name,
                      weight: ingredient.quantity,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
