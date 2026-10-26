
import 'package:flutter/material.dart';
import '../data/recipe_data.dart';
import 'recipe_list_page.dart';
import 'recipe_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color primaryColor = Color(0xFFE8873D);
  static const Color textColor = Color(0xFF35271F);
  static const Color backgroundColor = Color(0xFFFFFAF3);

  int _selectedIndex = 0;

  void _openRecipeList({String? category}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => RecipeListPage(initialCategory: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildHomeContent(),
      _buildCatalogContent(),
      _buildPlaceholder(
        icon: Icons.favorite_border,
        title: 'Resep Favorit',
        description:
        'Simpan resep favoritmu agar mudah ditemukan nanti.',
      ),
      _buildPlaceholder(
        icon: Icons.person_outline,
        title: 'Profil',
        description: 'Halaman profil akan hadir pada pengembangan berikutnya.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Row(
          children: [
            Icon(Icons.restaurant_menu, color: primaryColor),
            SizedBox(width: 8),
            Text(
              'KulinerKu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: pages,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: const Color(0xFFFFE5C7),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: primaryColor),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.search, color: primaryColor),
            label: 'Katalog',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite, color: primaryColor),
            label: 'Favorit',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person, color: primaryColor),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildHomeContent() {
    final featuredRecipes = recipes.take(3).toList();

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        const Text(
          'Halo, pecinta kuliner! 👋',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Mau masak apa hari ini?',
          style: TextStyle(fontSize: 15, color: Colors.black54),
        ),
        const SizedBox(height: 18),

        TextField(
          readOnly: true,
          onTap: () => _openRecipeList(),
          decoration: InputDecoration(
            hintText: 'Cari resep favoritmu...',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // Banner resep Nusantara
        Container(
          height: 170,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: const Color(0xFFFFE5C7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Resep Nusantara',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Temukan inspirasi masakan lezat untuk dibuat di rumah.',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 11, height: 1.4),
                      ),
                      const SizedBox(height: 8),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: primaryColor,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () => _openRecipeList(),
                        child: const Text(
                          'Jelajahi Resep',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/nasi_goreng.jpg',
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.restaurant,
                      size: 48,
                      color: primaryColor,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Kategori',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            TextButton(
              onPressed: () => _openRecipeList(),
              child: const Text(
                'Lihat semua',
                style: TextStyle(color: Color(0xFF9A4D1D)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        Row(
          children: [
            Expanded(
              flex: 5,
              child: _categoryChip(
                'Makanan Utama',
                Icons.dinner_dining,
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              flex: 2,
              child: _categoryChip('Sup', Icons.soup_kitchen),
            ),
            const SizedBox(width: 6),
            Expanded(
              flex: 3,
              child: _categoryChip('Camilan', Icons.cookie),
            ),
          ],
        ),
        const SizedBox(height: 24),

        const Text(
          'Resep Pilihan',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        const SizedBox(height: 12),

        ...featuredRecipes.map((recipe) {
          return Card(
            color: Colors.white,
            elevation: 1,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Color(0xFFF3E8DC)),
            ),
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  recipe.image,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 64,
                      height: 64,
                      child: Icon(Icons.restaurant, color: primaryColor),
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
              subtitle: Text(
                '${recipe.category} • ${recipe.durationMinutes} menit',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              trailing: const Icon(Icons.chevron_right, color: textColor),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RecipeDetailPage(recipe: recipe),
                  ),
                );
              },
            ),
          );
        }),
      ],
    );
  }

  Widget _buildCatalogContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(
            'Temukan resep favoritmu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Cari inspirasi masakan untuk hari ini.',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Expanded(
          child: RecipeListPage(
            key: const ValueKey('main_catalog'),
            embedded: true,
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholder({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 72, color: primaryColor),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black54,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryChip(String category, IconData icon) {
    return ActionChip(
      avatar: Icon(icon, size: 16, color: primaryColor),
      label: Text(
        category,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 11),
      ),
      backgroundColor: Colors.white,
      side: const BorderSide(color: Color(0xFFF1D7BD)),
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
      onPressed: () => _openRecipeList(category: category),
    );
  }
}
