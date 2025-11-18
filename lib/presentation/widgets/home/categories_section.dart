import 'package:flutter/material.dart';
import '../common/category_chip.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Acids',
      'Bases',
      'Salts',
      'Organic Compounds',
      'Inorganic',
      'Metals',
      'Non-metals',
      'Alkali',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Browse Categories',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index < categories.length - 1 ? 12 : 0,
                ),
                child: CategoryChip(
                  label: categories[index],
                  onTap: () {
                    // Handle category tap
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