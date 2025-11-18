// lib/presentation/widgets/chemicals/chemical_list_item.dart

import 'package:flutter/material.dart';
import '../../../data/models/models.dart';
import '../../../config/theme/app_theme.dart';

class ChemicalListItem extends StatelessWidget {
  final ChemicalModel chemical;
  final List<int> gradientColors;
  final VoidCallback onTap;

  const ChemicalListItem({
    super.key,
    required this.chemical,
    required this.gradientColors,
    required this.onTap,
  });

  Color _getToxicityColor() {
    switch (chemical.toxicity) {
      case ToxicityLevel.extremelyToxic:
        return Color(0xFFDC2626);
      case ToxicityLevel.highlyToxic:
        return Color(0xFFEF4444);
      case ToxicityLevel.toxic:
        return Color(0xFFF59E0B);
      case ToxicityLevel.moderatelyToxic:
        return Color(0xFFFBBF24);
      case ToxicityLevel.lowToxicity:
        return Color(0xFF10B981);
      default:
        return Color(0xFF6B7280);
    }
  }

  Color _getStateColor() {
    if (chemical.physicalState.contains('Liquid')) {
      return Color(0xFF3B82F6);
    } else if (chemical.physicalState.contains('Gas')) {
      return Color(0xFF8B5CF6);
    } else if (chemical.physicalState.contains('Solid')) {
      return Color(0xFF10B981);
    }
    return Color(0xFF6B7280);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(gradientColors[0]).withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // Formula Container
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(gradientColors[0]),
                    Color(gradientColors[1]),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  _formatFormula(chemical.formula),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(width: 16),
            
            // Chemical Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chemical.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  if (chemical.commonName != null) ...[
                    SizedBox(height: 4),
                    Text(
                      chemical.commonName!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                  SizedBox(height: 12),
                  
                  // Tags
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildTag(
                        icon: Icons.water_drop,
                        label: chemical.physicalState,
                        color: _getStateColor(),
                      ),
                      _buildTag(
                        icon: Icons.warning,
                        label: chemical.toxicity,
                        color: _getToxicityColor(),
                      ),
                      _buildTag(
                        icon: Icons.balance,
                        label: chemical.molecularWeight,
                        color: Color(0xFF10B981),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Arrow
            Icon(
              Icons.chevron_right,
              color: Colors.white54,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: color),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  String _formatFormula(String formula) {
    return formula.replaceAll('₂', '2')
        .replaceAll('₃', '3')
        .replaceAll('₄', '4');
  }
}