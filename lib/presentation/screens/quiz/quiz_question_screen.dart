// lib/presentation/screens/quiz/quiz_question_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';
import '../../../data/models/quiz_category_model.dart';
import '../../../data/models/question_model.dart';
import '../../../data/models/quiz_result_model.dart';
import '../../widgets/quiz/quiz_progress_bar.dart';
import '../../widgets/quiz/quiz_timer.dart';
import '../../widgets/quiz/quiz_option_button.dart';
import '../../widgets/quiz/explanation_card.dart';
import 'quiz_result_screen.dart';

class QuizQuestionScreen extends StatefulWidget {
  final QuizCategoryModel category;

  const QuizQuestionScreen({
    super.key,
    required this.category,
  });

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;
  bool isAnswerSubmitted = false;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  Timer? _timer;
  int remainingSeconds = 300; // 5 minutes
  int totalTimeSpent = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
          totalTimeSpent++;
        });
      } else {
        _finishQuiz();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  QuestionModel get currentQuestion =>
      widget.category.questions[currentQuestionIndex];

  void _selectOption(int index) {
    if (!isAnswerSubmitted) {
      setState(() {
        selectedOptionIndex = index;
      });
    }
  }

  void _submitAnswer() {
    if (selectedOptionIndex == null) return;

    setState(() {
      isAnswerSubmitted = true;
      if (selectedOptionIndex == currentQuestion.correctAnswerIndex) {
        correctAnswers++;
      } else {
        wrongAnswers++;
      }
    });
  }

  void _nextQuestion() {
    if (currentQuestionIndex < widget.category.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOptionIndex = null;
        isAnswerSubmitted = false;
      });
    } else {
      _finishQuiz();
    }
  }

  void _finishQuiz() {
    _timer?.cancel();
    
    final result = QuizResultModel(
      correctAnswers: correctAnswers,
      wrongAnswers: wrongAnswers,
      totalQuestions: widget.category.questions.length,
      timeSpentInSeconds: totalTimeSpent,
      category: widget.category.title,
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => QuizResultScreen(result: result),
      ),
    );
  }

  OptionState _getOptionState(int index) {
    if (!isAnswerSubmitted) {
      return index == selectedOptionIndex
          ? OptionState.selected
          : OptionState.normal;
    } else {
      if (index == currentQuestion.correctAnswerIndex) {
        return OptionState.correct;
      } else if (index == selectedOptionIndex) {
        return OptionState.wrong;
      } else {
        return OptionState.normal;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF374151),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  QuizTimer(remainingSeconds: remainingSeconds),
                ],
              ),
              const SizedBox(height: 24),

              // Progress Bar
              QuizProgressBar(
                currentQuestion: currentQuestionIndex + 1,
                totalQuestions: widget.category.questions.length,
              ),
              const SizedBox(height: 32),

              // Question Card
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: const Color(0xFF334155),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Question Badge
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'QUESTION ${currentQuestionIndex + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Question Text
                        Text(
                          currentQuestion.question,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Options
                        ...List.generate(
                          currentQuestion.options.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: QuizOptionButton(
                              label: String.fromCharCode(65 + index), // A, B, C, D
                              text: currentQuestion.options[index],
                              state: _getOptionState(index),
                              onTap: () => _selectOption(index),
                            ),
                          ),
                        ),

                        // Explanation (shown after submission)
                        if (isAnswerSubmitted) ...[
                          const SizedBox(height: 24),
                          ExplanationCard(
                            explanation: currentQuestion.explanation,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Submit/Next Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: isAnswerSubmitted
                      ? _nextQuestion
                      : (selectedOptionIndex != null ? _submitAnswer : null),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (isAnswerSubmitted ||
                            selectedOptionIndex != null)
                        ? const Color(0xFF6366F1)
                        : const Color(0xFF374151),
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: const Color(0xFF374151),
                    disabledForegroundColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isAnswerSubmitted ? 'Next Question' : 'Submit Answer',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (isAnswerSubmitted) ...[
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward, size: 20),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}