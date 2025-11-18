// lib/data/models/quiz_category_model.dart
import './question_model.dart';
class QuizCategoryModel {
  final String id;
  final String title;
  final String iconName;
  final List<QuestionModel> questions;

  QuizCategoryModel({
    required this.id,
    required this.title,
    required this.iconName,
    required this.questions,
  });

  factory QuizCategoryModel.fromJson(Map<String, dynamic> json) {
    return QuizCategoryModel(
      id: json['id'] as String,
      title: json['title'] as String,
      iconName: json['iconName'] as String,
      questions: (json['questions'] as List)
          .map((q) => QuestionModel.fromJson(q as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'iconName': iconName,
      'questions': questions.map((q) => q.toJson()).toList(),
    };
  }
}