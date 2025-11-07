
import 'dart:convert';

class RecipeData {
  final AppData list;
  final Details details;

  RecipeData({required this.list, required this.details});

  factory RecipeData.fromRawJson(String str) => RecipeData.fromJson(json.decode(str));

  factory RecipeData.fromJson(Map<String, dynamic> json) => RecipeData(
        list: AppData.fromJson(json["list"]),
        details: Details.fromJson(json["details"]),
      );
}

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
        newRecipes: List<NewRecipe>.from(json["new_recipes"].map((x) => NewRecipe.fromJson(x))),
      );
}

class User {
  final String name;
  final String profileImage;
  final String greeting;

  User({
    required this.name,
    required this.profileImage,
    required this.greeting,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        profileImage: json["profile_image"],
        greeting: json["greeting"],
      );
}

class Filters {
  final String searchPlaceholder;
  final List<Category> categories;

  Filters({
    required this.searchPlaceholder,
    required this.categories,
  });

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        searchPlaceholder: json["search_placeholder"],
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
      );
}

class Category {
  final int id;
  final String name;
  final bool selected;

  Category({
    required this.id,
    required this.name,
    required this.selected,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        selected: json["selected"],
      );
}

class Recipe {
  final int id;
  final String name;
  final double rating;
  final String time;
  final bool isBookmarked;
  final String image;

  Recipe({
    required this.id,
    required this.name,
    required this.rating,
    required this.time,
    required this.isBookmarked,
    required this.image,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        id: json["id"],
        name: json["name"],
        rating: json["rating"].toDouble(),
        time: json["time"],
        isBookmarked: json["is_bookmarked"],
        image: json["image"],
      );
}

class NewRecipe {
  final int id;
  final String name;
  final double rating;
  final String author;
  final String time;
  final String image;
  final String authorImage;

  NewRecipe({
    required this.id,
    required this.name,
    required this.rating,
    required this.author,
    required this.time,
    required this.image,
    required this.authorImage,
  });

  factory NewRecipe.fromJson(Map<String, dynamic> json) => NewRecipe(
        id: json["id"],
        name: json["name"],
        rating: json["rating"].toDouble(),
        author: json["author"],
        time: json["time"],
        image: json["image"],
        authorImage: json["author_image"],
      );
}

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
        ingredients: List<Ingredient>.from(json["ingredients"].map((x) => Ingredient.fromJson(x))),
      );
}

class RecipeDetails {
  final int id;
  final String title;
  final String image;
  final double rating;
  final String reviews;
  final String cookTime;
  final bool isBookmarked;

  RecipeDetails({
    required this.id,
    required this.title,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.cookTime,
    required this.isBookmarked,
  });

  factory RecipeDetails.fromJson(Map<String, dynamic> json) => RecipeDetails(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        rating: json["rating"].toDouble(),
        reviews: json["reviews"],
        cookTime: json["cook_time"],
        isBookmarked: json["is_bookmarked"],
      );
}

class Chef {
  final String name;
  final String profileImage;
  final String location;
  final bool isFollowing;

  Chef({
    required this.name,
    required this.profileImage,
    required this.location,
    required this.isFollowing,
  });

  factory Chef.fromJson(Map<String, dynamic> json) => Chef(
        name: json["name"],
        profileImage: json["profile_image"],
        location: json["location"],
        isFollowing: json["is_following"],
      );
}

class Tab {
  final String name;
  final bool active;

  Tab({
    required this.name,
    required this.active,
  });

  factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        name: json["name"],
        active: json["active"],
      );
}

class Serving {
  final String serves;
  final int totalItems;

  Serving({
    required this.serves,
    required this.totalItems,
  });

  factory Serving.fromJson(Map<String, dynamic> json) => Serving(
        serves: json["serves"],
        totalItems: json["total_items"],
      );
}

class Ingredient {
  final int id;
  final String name;
  final String quantity;
  final String icon;

  Ingredient({
    required this.id,
    required this.name,
    required this.quantity,
    required this.icon,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        id: json["id"],
        name: json["name"],
        quantity: json["quantity"],
        icon: json["icon"],
      );
}

