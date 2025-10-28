class Recipe {
  final String id;
  final String name;
  final String category;
  final String difficulty;
  final String time;
  final String servings;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final String imageEmoji;
  bool isFavorite;

  Recipe({
    required this.id,
    required this.name,
    required this.category,
    required this.difficulty,
    required this.time,
    required this.servings,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.imageEmoji,
    this.isFavorite = false,
  });
}
