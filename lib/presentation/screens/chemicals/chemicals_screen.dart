// lib/presentation/screens/chemicals/chemicals_screen.dart
import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';
import '../../widgets/chemicals/category_card.dart';
import '../../../data/constants/categories_data.dart';

class ChemicalsScreen extends StatefulWidget {
  const ChemicalsScreen({super.key});

  @override
  State<ChemicalsScreen> createState() => _ChemicalsScreenState();
}

class _ChemicalsScreenState extends State<ChemicalsScreen> {
  final Set<String> _expandedCategories = {};

  void _toggleCategory(String categoryId) {
    setState(() {
      if (_expandedCategories.contains(categoryId)) {
        _expandedCategories.remove(categoryId);
      } else {
        _expandedCategories.add(categoryId);
      }
    });
  }

  bool _isCategoryExpanded(String categoryId) {
    return _expandedCategories.contains(categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: CategoriesData.categories.length,
                itemBuilder: (context, index) {
                  final category = CategoriesData.categories[index];
                  final isExpanded = _isCategoryExpanded(category.id);
                  
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: CategoryCard(
                      category: category,
                      isExpanded: isExpanded,
                      onToggle: () => _toggleCategory(category.id),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}