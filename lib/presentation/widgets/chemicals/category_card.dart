import 'package:flutter/material.dart';
import '../../../data/models/models.dart';
import '../../../config/theme/app_theme.dart';
import 'subcategory_item.dart';

class CategoryCard extends StatefulWidget {
  final CategoryModel category;
  final bool isExpanded;
  final VoidCallback onToggle;

  const CategoryCard({
    super.key,
    required this.category,
    required this.isExpanded,
    required this.onToggle,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool _pressed = false;

  IconData _getIconData() {
    switch (widget.category.icon) {
      case 'water_drop':
        return Icons.water_drop_outlined;
      case 'science':
        return Icons.science_outlined;
      case 'grain':
        return Icons.grain_outlined;
      case 'eco':
        return Icons.eco_outlined;
      case 'diamond':
        return Icons.diamond_outlined;
      case 'wb_sunny':
        return Icons.wb_sunny_outlined;
      case 'biotech':
        return Icons.biotech_outlined;
      default:
        return Icons.category_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _pressed ? 0.97 : 1.0,
      duration: const Duration(milliseconds: 120),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          color: AppTheme.cardBackground.withOpacity(0.55),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(widget.category.gradientColors[0]).withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(widget.category.gradientColors[0])
                  .withOpacity(widget.isExpanded ? 0.32 : 0.22),
              blurRadius: widget.isExpanded ? 22 : 12,
              offset: const Offset(0, 8),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            // HEADER
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapDown: (_) => setState(() => _pressed = true),
              onTapUp: (_) => setState(() => _pressed = false),
              onTapCancel: () => setState(() => _pressed = false),
              onTap: widget.onToggle,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // ICON
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(widget.category.gradientColors[0]),
                            Color(widget.category.gradientColors[1]),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color(widget.category.gradientColors[1])
                                .withOpacity(0.35),
                            blurRadius: 14,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Icon(
                        _getIconData(),
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 16),

                    // TITLE + INFO
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.category.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 6),
                          // Wrap instead of Row prevents overflow
                          Wrap(
                            spacing: 16,
                            runSpacing: 4,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.list_alt,
                                      size: 14, color: Colors.white54),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${widget.category.totalChemicals} chemicals',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.account_tree_outlined,
                                      size: 14, color: Colors.white54),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${widget.category.subcategoriesCount} subcategories',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // ARROW
                    AnimatedRotation(
                      turns: widget.isExpanded ? 0.5 : 0,
                      duration: const Duration(milliseconds: 300),
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white70,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SUBCATEGORIES
            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: Container(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 16),
                child: Column(
                  children: widget.category.subcategories.map((subcategory) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SubcategoryItem(
                        subcategory: subcategory,
                        gradientColors: widget.category.gradientColors,
                      ),
                    );
                  }).toList(),
                ),
              ),
              crossFadeState: widget.isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
