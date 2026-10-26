
import '../models/recipe.dart';

const List<Recipe> recipes = [
  Recipe(
    id: 'resep_001',
    name: 'Nasi Goreng Kampung',
    category: 'Makanan Utama',
    description:
    'Nasi goreng sederhana dengan bumbu khas rumahan.',
    image: 'assets/images/nasi_goreng.jpg',
    durationMinutes: 20,
    servings: 2,
    ingredients: [
      '2 piring nasi putih',
      '2 siung bawang putih',
      '1 butir telur',
      'Garam secukupnya',
      'Minyak untuk menumis',
    ],
    steps: [
      'Siapkan dan iris bumbu.',
      'Tumis bawang hingga harum.',
      'Masukkan telur dan orak-arik.',
      'Masukkan nasi dan garam, lalu aduk hingga matang.',
    ],
  ),
  Recipe(
    id: 'resep_002',
    name: 'Soto Ayam',
    category: 'Sup',
    description:
    'Sajian sup ayam berkuah kuning yang hangat dan gurih.',
    image: 'assets/images/soto_ayam.jpg',
    durationMinutes: 45,
    servings: 4,
    ingredients: [
      '500 gram ayam',
      '1 liter air',
      '2 siung bawang putih',
      '2 butir kemiri',
      'Garam dan rempah secukupnya',
    ],
    steps: [
      'Rebus ayam hingga matang.',
      'Haluskan bumbu dan tumis hingga harum.',
      'Masukkan bumbu ke dalam kuah.',
      'Masak hingga bumbu meresap, lalu sajikan.',
    ],
  ),
  Recipe(
    id: 'resep_003',
    name: 'Pisang Goreng',
    category: 'Camilan',
    description:
    'Camilan pisang sederhana dengan lapisan renyah.',
    image: 'assets/images/pisang_goreng.jpg',
    durationMinutes: 15,
    servings: 2,
    ingredients: [
      '4 buah pisang',
      '100 gram tepung terigu',
      'Air secukupnya',
      'Minyak untuk menggoreng',
    ],
    steps: [
      'Campurkan tepung dengan air hingga menjadi adonan.',
      'Celupkan pisang ke dalam adonan.',
      'Goreng hingga keemasan dan matang.',
      'Tiriskan sebelum disajikan.',
    ],
  ),
];
