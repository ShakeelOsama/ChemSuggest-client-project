// lib/presentation/screens/chemicals/chemical_detail_screen.dart

import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';
import '../../../data/models/models.dart';
import '../../widgets/chemical_details/detail_section.dart';
import '../../widgets/chemical_details/info_row.dart';

class ChemicalDetailScreen extends StatelessWidget {
  final ChemicalModel chemical;
  final List<int> gradientColors;

  const ChemicalDetailScreen({
    super.key,
    required this.chemical,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: CustomScrollView(
        slivers: [
          // App Bar with Gradient
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: Color(gradientColors[0]),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                chemical.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(gradientColors[0]),
                      Color(gradientColors[1]),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          
          // Content
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Common Names Section
                if (chemical.commonNames.isNotEmpty)
                  DetailSection(
                    icon: Icons.label_outline,
                    title: 'Common Names',
                    gradientColors: gradientColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: chemical.commonNames.map((name) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Text('• ', style: TextStyle(color: Colors.white)),
                              Text(
                                name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                
                // Basic Information
                DetailSection(
                  icon: Icons.info_outline,
                  title: 'Basic Information',
                  gradientColors: gradientColors,
                  child: Column(
                    children: [
                      InfoRow(label: 'Category', value: chemical.category),
                      InfoRow(label: 'Subcategory', value: chemical.subcategory),
                      InfoRow(label: 'Composition', value: chemical.composition),
                      InfoRow(label: 'Physical State', value: chemical.physicalState),
                      InfoRow(label: 'Molecular Weight', value: chemical.molecularWeight),
                    ],
                  ),
                ),
                
                // Physical Properties
                if (_hasPhysicalProperties())
                  DetailSection(
                    icon: Icons.thermostat_outlined,
                    title: 'Physical Properties',
                    gradientColors: gradientColors,
                    child: Column(
                      children: [
                        if (chemical.meltingPoint != null)
                          InfoRow(label: 'Melting Point', value: chemical.meltingPoint!),
                        if (chemical.boilingPoint != null)
                          InfoRow(label: 'Boiling Point', value: chemical.boilingPoint!),
                        if (chemical.density != null)
                          InfoRow(label: 'Density', value: chemical.density!),
                      ],
                    ),
                  ),
                
                // Discovery
                if (_hasDiscoveryInfo())
                  DetailSection(
                    icon: Icons.science_outlined,
                    title: 'Discovery',
                    gradientColors: gradientColors,
                    child: Column(
                      children: [
                        if (chemical.discoverer != null)
                          InfoRow(label: 'Discoverer', value: chemical.discoverer!),
                        if (chemical.discoveryYear != null)
                          InfoRow(label: 'Year', value: chemical.discoveryYear!),
                        if (chemical.source != null)
                          InfoRow(label: 'Source', value: chemical.source!),
                      ],
                    ),
                  ),
                
                // Uses
                if (chemical.uses.isNotEmpty)
                  DetailSection(
                    icon: Icons.work_outline,
                    title: 'Uses',
                    gradientColors: gradientColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: chemical.uses.map((use) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                width: 6,
                                height: 6,
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
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  use,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                
                // Advantages
                if (chemical.advantages.isNotEmpty)
                  DetailSection(
                    icon: Icons.thumb_up_outlined,
                    title: 'Advantages',
                    gradientColors: gradientColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: chemical.advantages.map((advantage) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Color(0xFF10B981),
                                size: 18,
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  advantage,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                
                // Disadvantages
                if (chemical.disadvantages.isNotEmpty)
                  DetailSection(
                    icon: Icons.thumb_down_outlined,
                    title: 'Disadvantages',
                    gradientColors: gradientColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: chemical.disadvantages.map((disadvantage) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.remove_circle,
                                color: Color(0xFFEF4444),
                                size: 18,
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  disadvantage,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _hasPhysicalProperties() {
    return chemical.meltingPoint != null ||
        chemical.boilingPoint != null ||
        chemical.density != null;
  }

  bool _hasDiscoveryInfo() {
    return chemical.discoverer != null ||
        chemical.discoveryYear != null ||
        chemical.source != null;
  }
}