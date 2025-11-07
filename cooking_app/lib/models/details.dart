import 'recipe_details.dart';
import 'chef.dart';
import 'tab.dart';
import 'serving.dart';
import 'ingredient.dart';

class Details {
  final RecipeDetails recipe;
  final Chef chef;
  final List<Tab> tabs;
  final Serving serving;
  final List<Ingredient> ingredients;

  Details({
    required this.recipe,
    required this.chef,
    required this.tabs,
    required this.serving,
    required this.ingredients,
  });

  factory Details.fromJson(Map<String, dynamic> json) => Details(
    recipe: RecipeDetails.fromJson(json["recipe"]),
    chef: Chef.fromJson(json["chef"]),
    tabs: List<Tab>.from(json["tabs"].map((x) => Tab.fromJson(x))),
    serving: Serving.fromJson(json["serving"]),
    ingredients: List<Ingredient>.from(
      json["ingredients"].map((x) => Ingredient.fromJson(x)),
    ),
  );
}
