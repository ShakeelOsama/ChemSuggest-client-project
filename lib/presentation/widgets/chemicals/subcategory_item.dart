// lib/presentation/widgets/chemicals/subcategory_item.dart

import 'package:flutter/material.dart';
import '../../../data/models/models.dart';
import '../../screens/chemicals/chemical_list_screen.dart';

class SubcategoryItem extends StatelessWidget {
  final SubcategoryModel subcategory;
  final List<int> gradientColors;

  const SubcategoryItem({
    super.key,
    required this.subcategory,
    required this.gradientColors,
  });

  void _navigateToChemicalList(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChemicalListScreen(
          subcategoryId: subcategory.id,
          subcategoryName: subcategory.name,
          gradientColors: gradientColors,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToChemicalList(context),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Bullet Point
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(gradientColors[0]),
                    Color(gradientColors[1]),
                  ],
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 16),
            
            // Subcategory Name
            Expanded(
              child: Text(
                subcategory.name,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            
            // Count Badge
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(gradientColors[0]),
                    Color(gradientColors[1]),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '${subcategory.chemicalCount}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
            const SizedBox(width: 8),
            
            // Arrow Icon
            Icon(
              Icons.chevron_right,
              color: Colors.white54,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}