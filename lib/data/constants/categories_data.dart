// lib/data/constants/categories_data.dart

import '../models/models.dart';

class CategoriesData {
  static final List<CategoryModel> categories = [
    CategoryModel(
      id: 'acids',
      name: 'Acids',
      icon: 'water_drop',
      totalChemicals: 24,
      subcategoriesCount: 2,
      gradientColors: [0xFF667EEA, 0xFF764BA2],
      subcategories: [
        SubcategoryModel(
          id: 'strong_acids',
          name: 'Strong acids',
          chemicalCount: 9,
        ),
        SubcategoryModel(
          id: 'weak_acids',
          name: 'Weak acids',
          chemicalCount: 15,
        ),
      ],
    ),
    CategoryModel(
      id: 'bases',
      name: 'Bases',
      icon: 'science',
      totalChemicals: 15,
      subcategoriesCount: 2,
      gradientColors: [0xFFA18CD1, 0xFFFBC2EB],
      subcategories: [
        SubcategoryModel(
          id: 'strong_bases',
          name: 'Strong bases',
          chemicalCount: 8,
        ),
        SubcategoryModel(
          id: 'weak_bases',
          name: 'Weak bases',
          chemicalCount: 7,
        ),
      ],
    ),
    CategoryModel(
      id: 'salts',
      name: 'Salts',
      icon: 'grain',
      totalChemicals: 6,
      subcategoriesCount: 4,
      gradientColors: [0xFF56AB2F, 0xFFA8E063],
      subcategories: [
        SubcategoryModel(
          id: 'chlorides',
          name: 'Chlorides',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'sulfates',
          name: 'Sulfates',
          chemicalCount: 1,
        ),
        SubcategoryModel(
          id: 'nitrates',
          name: 'Nitrates',
          chemicalCount: 1,
        ),
        SubcategoryModel(
          id: 'carbonates',
          name: 'Carbonates',
          chemicalCount: 1,
        ),
      ],
    ),
    CategoryModel(
      id: 'organic_compounds',
      name: 'Organic compounds',
      icon: 'eco',
      totalChemicals: 14,
      subcategoriesCount: 5,
      gradientColors: [0xFFFF512F, 0xFFF09819],
      subcategories: [
        SubcategoryModel(
          id: 'alcohols',
          name: 'Alcohols',
          chemicalCount: 4,
        ),
        SubcategoryModel(
          id: 'alkanes',
          name: 'Alkanes',
          chemicalCount: 4,
        ),
        SubcategoryModel(
          id: 'alkenes',
          name: 'Alkenes',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'alkynes',
          name: 'Alkynes',
          chemicalCount: 1,
        ),
        SubcategoryModel(
          id: 'aromatics',
          name: 'Aromatics',
          chemicalCount: 3,
        ),
      ],
    ),
    CategoryModel(
      id: 'inorganic_compounds',
      name: 'Inorganic compounds',
      icon: 'diamond',
      totalChemicals: 11,
      subcategoriesCount: 4,
      gradientColors: [0xFFFF9966, 0xFFFF5E62],
      subcategories: [
        SubcategoryModel(
          id: 'oxides',
          name: 'Oxides',
          chemicalCount: 5,
        ),
        SubcategoryModel(
          id: 'hydroxides',
          name: 'Hydroxides',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'sulfides',
          name: 'Sulfides',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'phosphates',
          name: 'Phosphates',
          chemicalCount: 2,
        ),
      ],
    ),
    CategoryModel(
      id: 'elements',
      name: 'Elements',
      icon: 'wb_sunny',
      totalChemicals: 10,
      subcategoriesCount: 3,
      gradientColors: [0xFF4A00E0, 0xFF8E2DE2],
      subcategories: [
        SubcategoryModel(
          id: 'alkali_metals',
          name: 'Alkali metals',
          chemicalCount: 3,
        ),
        SubcategoryModel(
          id: 'halogens',
          name: 'Halogens',
          chemicalCount: 4,
        ),
        SubcategoryModel(
          id: 'nobel_gases',
          name: 'Nobel gases',
          chemicalCount: 3,
        ),
      ],
    ),
    CategoryModel(
      id: 'biochemical',
      name: 'Biochemical Compounds',
      icon: 'biotech',
      totalChemicals: 6,
      subcategoriesCount: 3,
      gradientColors: [0xFF00C9FF, 0xFF92FE9D],
      subcategories: [
        SubcategoryModel(
          id: 'amino_acids',
          name: 'Amino acids',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'sugars',
          name: 'Sugars',
          chemicalCount: 3,
        ),
        SubcategoryModel(
          id: 'vitamins',
          name: 'Vitamins',
          chemicalCount: 1,
        ),
      ],
    ),
    CategoryModel(
      id: 'polymers',
      name: 'Polymers',
      icon: 'category',
      totalChemicals: 4,
      subcategoriesCount: 2,
      gradientColors: [0xFF00C9FF, 0xFF92FE9D],
      subcategories: [
        SubcategoryModel(
          id: 'synthetic_polymers',
          name: 'Synthetic polymers',
          chemicalCount: 2,
        ),
        SubcategoryModel(
          id: 'natural_polymers',
          name: 'Natural polymers',
          chemicalCount: 2,
        ),
      ],
    ),
  ];
}
