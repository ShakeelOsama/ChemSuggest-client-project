// lib/presentation/screens/home/home_screen.dart

import 'package:flutter/material.dart';
import '../../widgets/home/welcome_card.dart';
import '../../widgets/home/stats_grid.dart';
import '../../widgets/home/categories_section.dart';
import '../../widgets/home/quick_actions_section.dart';
import '../../widgets/home/did_you_know_card.dart';
import '../../../config/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onQuizTap;
  final VoidCallback onBrowseTap;

  const HomeScreen({
    super.key,
    required this.onQuizTap,
    required this.onBrowseTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                
                // Welcome Card
                const WelcomeCard(),
                const SizedBox(height: 24),
                
                // Quick Stats Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Quick Stats',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.trending_up, size: 18),
                      label: const Text('Overview'),
                      style: TextButton.styleFrom(
                        foregroundColor: AppTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Stats Grid (Horizontal Scrollable)
                const StatsGrid(),
                const SizedBox(height: 32),
                
                // Browse Categories
                const CategoriesSection(),
                const SizedBox(height: 32),
                
                // Quick Actions
                QuickActionsSection(
                  onQuizTap: onQuizTap,
                  onBrowseTap: onBrowseTap,
                ),
                const SizedBox(height: 24),
                
                // Did You Know Card
                const DidYouKnowCard(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}