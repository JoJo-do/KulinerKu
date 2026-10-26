
class Recipe {
  final String id;
  final String name;
  final String category;
  final String description;
  final String image;
  final int durationMinutes;
  final int servings;
  final List<String> ingredients;
  final List<String> steps;

  const Recipe({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.durationMinutes,
    required this.servings,
    required this.ingredients,
    required this.steps,
  });
}
