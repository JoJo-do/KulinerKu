
import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Resep'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              recipe.image,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 240,
                  color: const Color(0xFFFFE5C7),
                  child: const Icon(
                    Icons.restaurant_menu,
                    size: 80,
                    color: Color(0xFFE8873D),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          Text(
            recipe.name,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            recipe.description,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.black54,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              const Icon(
                Icons.schedule,
                color: Color(0xFFE8873D),
              ),
              const SizedBox(width: 8),
              Text('${recipe.durationMinutes} menit'),
              const SizedBox(width: 24),
              const Icon(
                Icons.people_outline,
                color: Color(0xFFE8873D),
              ),
              const SizedBox(width: 8),
              Text('${recipe.servings} porsi'),
            ],
          ),

          const SizedBox(height: 28),

          const Text(
            'Bahan-bahan',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          ...recipe.ingredients.map((ingredient) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Color(0xFFE8873D),
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Text(ingredient)),
                ],
              ),
            );
          }),

          const SizedBox(height: 20),

          const Text(
            'Langkah memasak',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          ...recipe.steps.asMap().entries.map((entry) {
            final index = entry.key;
            final step = entry.value;

            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color(0xFFFFE5C7),
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Color(0xFF9A4D1D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        step,
                        style: const TextStyle(height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
