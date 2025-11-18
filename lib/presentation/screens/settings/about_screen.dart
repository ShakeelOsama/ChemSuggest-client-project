// lib/presentation/screens/settings/about_screen.dart

import 'package:flutter/material.dart';
import '../../widgets/settings/feature_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1F2E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1F2E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color(0xFF9CA3AF),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                 colors: [
                    const Color(0xFF6366F1).withValues(alpha: 0.8),
                    const Color(0xFF8B5CF6).withValues(alpha: 0.8),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.3),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.science,
                          size: 48,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'ChemSuggest',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Content Section
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Chemistry Companion',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'A comprehensive chemistry learning app with 100+ chemicals and 400+ quiz questions across multiple categories.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Features
                  const FeatureCard(
                    icon: Icons.science,
                    title: '100+ Chemicals',
                    subtitle: 'Detailed information',
                    iconColor: Color(0xFF6366F1),
                  ),
                  const SizedBox(height: 16),
                  
                  const FeatureCard(
                    icon: Icons.quiz,
                    title: '400+ Questions',
                    subtitle: 'Interactive quizzes',
                    iconColor: Color(0xFF8B5CF6),
                  ),
                  const SizedBox(height: 16),
                  
                  const FeatureCard(
                    icon: Icons.category,
                    title: 'Multiple Categories',
                    subtitle: 'Organized content',
                    iconColor: Color(0xFF3B82F6),
                  ),
                  const SizedBox(height: 32),
                  
                  // Divider
                  Container(
                    height: 1,
                    color: const Color(0xFF334155),
                  ),
                  const SizedBox(height: 32),
                  
                  // App Info
                  _buildInfoRow('Developer', 'ChemSuggest Team'),
                  const SizedBox(height: 16),
                  _buildInfoRow('Category', 'Education'),
                  const SizedBox(height: 16),
                  _buildInfoRow('Platform', 'Android & iOS'),
                  const SizedBox(height: 16),
                  _buildInfoRow('License', 'Proprietary'),
                  const SizedBox(height: 32),
                  
                  // Divider
                  Container(
                    height: 1,
                    color: const Color(0xFF334155),
                  ),
                  const SizedBox(height: 32),
                  
                  // Features List
                  const Text(
                    'Key Features',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildFeatureItem('📚 Comprehensive chemical database'),
                  _buildFeatureItem('🧪 Interactive quiz system'),
                  _buildFeatureItem('🎯 Progress tracking'),
                  _buildFeatureItem('🌙 Dark and light themes'),
                  _buildFeatureItem('📱 Offline functionality'),
                  _buildFeatureItem('🔍 Advanced search capabilities'),
                  _buildFeatureItem('⭐ Bookmark your favorites'),
                  _buildFeatureItem('📊 Detailed statistics'),
                  
                  const SizedBox(height: 32),
                  
                  // Contact Section
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF1E293B),
                          const Color(0xFF1E293B).withValues(alpha: 0.5),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xFF334155),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildContactItem(
                          Icons.email,
                          'support@chemsuggest.com',
                        ),
                        const SizedBox(height: 12),
                        _buildContactItem(
                          Icons.language,
                          'www.chemsuggest.com',
                        ),
                        const SizedBox(height: 12),
                        _buildContactItem(
                          Icons.bug_report,
                          'Report a bug',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Close Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6366F1),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Close',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Copyright
                  Center(
                    child: Text(
                      '© 2025 ChemSuggest. All rights reserved.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white60,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Color(0xFF6366F1),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: const Color(0xFF6366F1),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}