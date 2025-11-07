import 'user.dart';
import 'filters.dart';
import 'recipe.dart';
import 'new_recipe.dart';

class AppData {
  final User user;
  final Filters filters;
  final List<Recipe> recipes;
  final List<NewRecipe> newRecipes;

  AppData({
    required this.user,
    required this.filters,
    required this.recipes,
    required this.newRecipes,
  });

  factory AppData.fromJson(Map<String, dynamic> json) => AppData(
    user: User.fromJson(json["user"]),
    filters: Filters.fromJson(json["filters"]),
    recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    newRecipes: List<NewRecipe>.from(
      json["new_recipes"].map((x) => NewRecipe.fromJson(x)),
    ),
  );
}
