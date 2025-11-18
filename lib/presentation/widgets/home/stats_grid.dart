import 'package:flutter/material.dart';
import '../common/stat_card.dart';
import '../../../config/theme/app_theme.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: [
        StatCard(
          icon: Icons.science_outlined,
          label: 'Chemicals',
          value: '90',
          badge: 'Total',
          gradientColors: [AppTheme.blueCardStart, AppTheme.blueCardEnd],
        ),
        StatCard(
          icon: Icons.eco_outlined,
          label: 'Compounds',
          value: '0',
          badge: 'Organic',
          gradientColors: [AppTheme.greenCardStart, AppTheme.greenCardEnd],
        ),
        StatCard(
          icon: Icons.wb_sunny_outlined,
          label: 'Elements',
          value: '0',
          badge: 'Metals',
          gradientColors: [AppTheme.orangeCardStart, AppTheme.orangeCardEnd],
        ),
        StatCard(
          icon: Icons.category_outlined,
          label: 'Categories',
          value: '8',
          badge: 'Total',
          gradientColors: [AppTheme.purpleCardStart, AppTheme.purpleCardEnd],
        ),
        StatCard(
          icon: Icons.diamond_outlined,
          label: 'Compounds',
          value: '0',
          badge: 'Inorganic',
          gradientColors: [AppTheme.redCardStart, AppTheme.redCardEnd],
        ),
        StatCard(
          icon: Icons.water_drop_outlined,
          label: 'Compounds',
          value: '24',
          badge: 'Acids',
          gradientColors: [AppTheme.tealCardStart, AppTheme.tealCardEnd],
        ),
      ],
    );
  }
}
