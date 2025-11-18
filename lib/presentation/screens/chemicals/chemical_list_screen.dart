// lib/presentation/screens/chemicals/chemical_list_screen.dart

import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';
import '../../../data/models/models.dart';
import '../../../data/constants/chemicals_data.dart';
import '../../widgets/chemicals/chemical_list_item.dart';
import 'chemical_detail_screen.dart';

class ChemicalListScreen extends StatelessWidget {
  final String subcategoryId;
  final String subcategoryName;
  final List<int> gradientColors;

  const ChemicalListScreen({
    super.key,
    required this.subcategoryId,
    required this.subcategoryName,
    required this.gradientColors,
  });

  void _navigateToDetail(BuildContext context, ChemicalModel chemical) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChemicalDetailScreen(
          chemical: chemical,
          gradientColors: gradientColors,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final chemicals = ChemicalsData.getChemicalsBySubcategory(subcategoryId);

    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.darkBackground,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          subcategoryName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: chemicals.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.science_outlined,
                    size: 80,
                    color: Colors.white24,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No chemicals found',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: chemicals.length,
              itemBuilder: (context, index) {
                final chemical = chemicals[index];
                return Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ChemicalListItem(
                    chemical: chemical,
                    gradientColors: gradientColors,
                    onTap: () => _navigateToDetail(context, chemical),
                  ),
                );
              },
            ),
    );
  }
}