// lib/presentation/widgets/quiz/quiz_option_button.dart

import 'package:flutter/material.dart';

enum OptionState { normal, selected, correct, wrong }

class QuizOptionButton extends StatelessWidget {
  final String label;
  final String text;
  final OptionState state;
  final VoidCallback onTap;

  const QuizOptionButton({
    super.key,
    required this.label,
    required this.text,
    required this.state,
    required this.onTap,
  });

  Color _getBackgroundColor() {
    switch (state) {
      case OptionState.normal:
        return const Color(0xFF1F2937);
      case OptionState.selected:
        return const Color(0xFF6366F1);
      case OptionState.correct:
        return const Color(0xFF10B981);
      case OptionState.wrong:
        return const Color(0xFF1F2937);
    }
  }

  Color _getBorderColor() {
    switch (state) {
      case OptionState.normal:
      case OptionState.wrong:
        return const Color(0xFF374151);
      case OptionState.selected:
        return const Color(0xFF6366F1);
      case OptionState.correct:
        return const Color(0xFF10B981);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: state == OptionState.normal ? onTap : null,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          border: Border.all(color: _getBorderColor(), width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: state == OptionState.correct
                    ? const Color(0xFF34D399)
                    : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: state == OptionState.correct
                    ? const Icon(Icons.check, color: Colors.white, size: 20)
                    : Text(
                        label,
                        style: TextStyle(
                          color: state == OptionState.selected
                              ? const Color(0xFF6366F1)
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}