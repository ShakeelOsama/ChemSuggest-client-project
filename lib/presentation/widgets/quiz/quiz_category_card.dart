// lib/presentation/widgets/quiz/quiz_category_card.dart

import 'package:flutter/material.dart';

class QuizCategoryCard extends StatelessWidget {
  final String title;
  final String iconName;
  final VoidCallback onTap;

  const QuizCategoryCard({
    super.key,
    required this.title,
    required this.iconName,
    required this.onTap,
  });

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'acids':
        return Icons.science;
      case 'bases':
        return Icons.local_drink;
      case 'salts':
        return Icons.grain;
      case 'organic':
        return Icons.psychology;
      case 'elements':
        return Icons.auto_awesome;
      case 'inorganic':
        return Icons.blur_circular;
      case 'biochemical':
        return Icons.biotech;
      case 'polymers':
        return Icons.scatter_plot;
      default:
        return Icons.science;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6366F1),
              Color(0xFF8B5CF6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF6366F1).withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getIconData(iconName),
              size: 48,
              color: Colors.white,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}