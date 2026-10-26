
import 'package:flutter/material.dart';
import '../data/recipe_data.dart';
import '../models/recipe.dart';
import 'recipe_detail_page.dart';

class RecipeListPage extends StatefulWidget {
  final String? initialCategory;
  final bool embedded;

  const RecipeListPage({
    super.key,
    this.initialCategory,
    this.embedded = false,
  });

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  late String selectedCategory;
  String searchQuery = '';

  static const Color primaryColor = Color(0xFFE8873D);
  static const Color textColor = Color(0xFF35271F);

  final List<String> categories = [
    'Semua',
    'Makanan Utama',
    'Sup',
    'Camilan',
  ];

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.initialCategory ?? 'Semua';
  }

  @override
  Widget build(BuildContext context) {
    final content = _buildCatalogContent();

    if (widget.embedded) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Katalog Resep',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: content,
    );
  }

  Widget _buildCatalogContent() {
    final List<Recipe> filteredRecipes = recipes.where((recipe) {
      final matchesCategory = selectedCategory == 'Semua' ||
          recipe.category == selectedCategory;

      final matchesSearch = recipe.name
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      return matchesCategory && matchesSearch;
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Cari nama masakan...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 44,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final category = categories[index];
              final isSelected = selectedCategory == category;

              return ChoiceChip(
                label: Text(category),
                selected: isSelected,
                selectedColor: const Color(0xFFFFE5C7),
                labelStyle: TextStyle(
                  color: isSelected ? textColor : Colors.black87,
                  fontWeight:
                  isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                onSelected: (_) {
                  setState(() {
                    selectedCategory = category;
                  });
                },
              );
            },
          ),
        ),

        const SizedBox(height: 8),

        Expanded(
          child: filteredRecipes.isEmpty
              ? const Center(
            child: Text('Resep tidak ditemukan.'),
          )
              : ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
            itemCount: filteredRecipes.length,
            itemBuilder: (context, index) {
              final recipe = filteredRecipes[index];

              return Card(
                color: Colors.white,
                elevation: 1,
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(
                    color: Color(0xFFF3E8DC),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      recipe.image,
                      width: 68,
                      height: 68,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 68,
                          height: 68,
                          color: const Color(0xFFFFE5C7),
                          child: const Icon(
                            Icons.restaurant,
                            color: primaryColor,
                          ),
                        );
                      },
                    ),
                  ),
                  title: Text(
                    recipe.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '${recipe.category} • '
                          '${recipe.durationMinutes} menit',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: textColor,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            RecipeDetailPage(recipe: recipe),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
