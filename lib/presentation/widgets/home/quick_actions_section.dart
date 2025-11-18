// lib/presentation/widgets/home/quick_actions_section.dart

import 'package:flutter/material.dart';
import '../common/action_card.dart';

class QuickActionsSection extends StatelessWidget {
  final VoidCallback onQuizTap;
  final VoidCallback onBrowseTap;

  const QuickActionsSection({
    super.key,
    required this.onQuizTap,
    required this.onBrowseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Actions',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ActionCard(
                icon: Icons.quiz_outlined,
                label: 'Take Quiz',
                onTap: onQuizTap,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ActionCard(
                icon: Icons.explore_outlined,
                label: 'Browse All',
                onTap: onBrowseTap,
              ),
            ),
          ],
        ),
      ],
    );
  }
}