// lib/presentation/screens/settings/privacy_policy_screen.dart

import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Chemsuggest Privacy Policy',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Chemsuggest Privacy Policy',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Last Updated: October 19, 2025',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  _buildSection(
                    '1. INTRODUCTION',
                    'Welcome to ChemSuggest, a comprehensive chemistry learning application designed to help students and chemistry enthusiasts explore chemical compounds, test their knowledge through interactive quizzes, and deepen their understanding of chemistry concepts. This Privacy Policy describes how ChemSuggest ("we," "our," or "the App") handles information when you use our mobile application.',
                  ),
                  
                  _buildSection(
                    '2. INFORMATION COLLECTION',
                    'ChemSuggest is built with privacy in mind. The app operates entirely offline and stores all data locally on your device.',
                  ),
                  
                  const SizedBox(height: 16),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3B82F6).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.info_outline,
                          color: Color(0xFF3B82F6),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Information We DO Collect (Stored Locally):',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1F2937),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '• Theme preferences (light/dark mode)\n'
                              '• Quiz scores and progress\n'
                              '• Bookmarked chemicals\n'
                              '• App settings and configurations',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF4B5563),
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  _buildSection(
                    '3. HOW WE USE YOUR INFORMATION',
                    'All information is stored locally on your device and is used solely to:\n\n'
                    '• Provide personalized learning experience\n'
                    '• Track your quiz performance\n'
                    '• Save your bookmarked chemicals\n'
                    '• Remember your app preferences\n\n'
                    'We do not transmit, share, or sell any of your data to third parties.',
                  ),
                  
                  _buildSection(
                    '4. DATA STORAGE AND SECURITY',
                    'Your data is stored securely on your device using industry-standard local storage mechanisms. We do not have access to your data, and it remains on your device at all times.',
                  ),
                  
                  _buildSection(
                    '5. DATA RETENTION',
                    'Data remains on your device until you:\n'
                    '• Clear app data through settings\n'
                    '• Uninstall the application\n'
                    '• Manually delete specific information',
                  ),
                  
                  _buildSection(
                    '6. THIRD-PARTY SERVICES',
                    'ChemSuggest does not integrate with any third-party services, analytics platforms, or advertising networks. The app functions entirely offline.',
                  ),
                  
                  _buildSection(
                    '7. CHILDREN\'S PRIVACY',
                    'Our app is safe for users of all ages. Since we don\'t collect or transmit any personal information, there are no special privacy concerns for children.',
                  ),
                  
                  _buildSection(
                    '8. YOUR RIGHTS',
                    'You have complete control over your data:\n'
                    '• Access: View all data stored in the app\n'
                    '• Delete: Clear all data through settings\n'
                    '• Control: Manage what information you save',
                  ),
                  
                  _buildSection(
                    '9. CHANGES TO THIS POLICY',
                    'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy within the app.',
                  ),
                  
                  _buildSection(
                    '10. CONTACT US',
                    'If you have any questions about this Privacy Policy, please contact us at:\n\n'
                    'Email: support@chemsuggest.com\n'
                    'Website: www.chemsuggest.com',
                  ),
                  
                  const SizedBox(height: 32),
                  
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF3B82F6).withOpacity(0.2),
                      ),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xFF3B82F6),
                          size: 24,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Your privacy is our priority. ChemSuggest is designed to work completely offline, ensuring your data never leaves your device.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF1E40AF),
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
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

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF4B5563),
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}