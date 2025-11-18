import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';

class DidYouKnowCard extends StatelessWidget {
  const DidYouKnowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryColor.withAlpha((0.3 * 255).toInt()), // 30% opacity
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: AppTheme.primaryColor,
                size: 24,
              ),
              const SizedBox(width: 12),
              Text(
                'Did You Know?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 15,
                color: Colors.white70,
                height: 1.5,
              ),
              children: [
                TextSpan(text: 'Water (H'),
                TextSpan(
                  text: '₂',
                  style: TextStyle(
                    fontSize: 12,
                    fontFeatures: [FontFeature.subscripts()],
                  ),
                ),
                TextSpan(
                  text: 'O) is the only substance found naturally in all three states - solid, liquid, and gas - on Earth.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}