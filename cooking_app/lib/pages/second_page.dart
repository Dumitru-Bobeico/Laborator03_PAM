import 'package:cooking_app/resources/app_icons.dart';
import 'package:cooking_app/resources/colors.dart';
import 'package:cooking_app/widgets/back_to_menu.dart';
import 'package:cooking_app/widgets/food_card.dart';
import 'package:cooking_app/widgets/food_title.dart';
import 'package:cooking_app/widgets/ingredient.dart';
import 'package:cooking_app/widgets/serve_items_display.dart';
import 'package:cooking_app/widgets/user_profile_header.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            BackToMenuBar(),
            FoodCard(),
            SizedBox(height: 15),
            FoodTitleWithReviews(
              titleLine1: 'Spicy chicken burger with',
              titleLine2: 'French fries',
              reviewsCount: '13k',
            ),
            UserProfileStaticHeader(
              userName: 'Laura wilson',
              location: 'Lagos, Nigeria',
            ),
            SizedBox(height: 25),
            ServeAndItemsDisplay(),
            SizedBox(height: 25),
            Ingredient(
              imageUrl: AppIcons.tomato,
              productName: 'Tomatos',
              weight: '500g',
            ),
            SizedBox(height: 10),
            Ingredient(
              imageUrl: AppIcons.cabbage,
              productName: 'Cabbage',
              weight: '300g',
            ),
            SizedBox(height: 10),
            Ingredient(
              imageUrl: AppIcons.taco,
              productName: 'Taco',
              weight: '300g',
            ),
            SizedBox(height: 10),
            Ingredient(
              imageUrl: AppIcons.sandwich,
              productName: 'Slice Bread',
              weight: '300g',
            ),
          ],
        ),
      ),
    );
  }
}
