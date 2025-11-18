// lib/presentation/navigation/main_navigation.dart

import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/chemicals/chemicals_screen.dart';
import '../screens/quiz/quiz_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../../../config/theme/app_theme.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  // Method to change tab programmatically
  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(
            onQuizTap: () => _changeTab(2), // Navigate to Quiz tab
            onBrowseTap: () => _changeTab(1), // Navigate to Chemicals tab
          ),
          const ChemicalsScreen(),
          const QuizScreen(),
          const SettingsScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((0.1 * 255).toInt()), // 10% opacity
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home,
                  index: 0,
                ),
                _buildNavItem(
                  icon: Icons.science_outlined,
                  activeIcon: Icons.science,
                  index: 1,
                ),
                _buildNavItem(
                  icon: Icons.quiz_outlined,
                  activeIcon: Icons.quiz,
                  index: 2,
                ),
                _buildNavItem(
                  icon: Icons.settings_outlined,
                  activeIcon: Icons.settings,
                  index: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required IconData activeIcon,
    required int index,
  }) {
    final isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () => _changeTab(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isActive
              ? AppTheme.primaryColor.withAlpha((0.2 * 255).toInt()) // 20% opacity
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          isActive ? activeIcon : icon,
          color: isActive ? AppTheme.primaryColor : Colors.white54,
          size: 28,
        ),
      ),
    );
  }
}