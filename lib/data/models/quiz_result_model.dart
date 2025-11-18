// lib/data/models/quiz_result_model.dart

class QuizResultModel {
  final int correctAnswers;
  final int wrongAnswers;
  final int totalQuestions;
  final int timeSpentInSeconds;
  final String category;

  QuizResultModel({
    required this.correctAnswers,
    required this.wrongAnswers,
    required this.totalQuestions,
    required this.timeSpentInSeconds,
    required this.category,
  });

  int get score => ((correctAnswers / totalQuestions) * 100).round();

  String get formattedTime {
    final minutes = timeSpentInSeconds ~/ 60;
    final seconds = timeSpentInSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}