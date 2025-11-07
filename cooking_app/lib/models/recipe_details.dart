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
