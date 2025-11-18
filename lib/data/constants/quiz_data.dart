// lib/data/constants/quiz_data.dart

import '../models/question_model.dart';
import '../models/quiz_category_model.dart';

class QuizData {
  static List<QuizCategoryModel> getQuizCategories() {
    return [
      QuizCategoryModel(
        id: 'acids',
        title: 'Acids',
        iconName: 'acids',
        questions: _getAcidsQuestions(),
      ),
      QuizCategoryModel(
        id: 'bases',
        title: 'Bases',
        iconName: 'bases',
        questions: _getBasesQuestions(),
      ),
      QuizCategoryModel(
        id: 'salts',
        title: 'Salts',
        iconName: 'salts',
        questions: _getSaltsQuestions(),
      ),
      QuizCategoryModel(
        id: 'organic',
        title: 'Organic Compounds',
        iconName: 'organic',
        questions: _getOrganicQuestions(),
      ),
      QuizCategoryModel(
        id: 'elements',
        title: 'Elements',
        iconName: 'elements',
        questions: _getElementsQuestions(),
      ),
      QuizCategoryModel(
        id: 'inorganic',
        title: 'Inorganic Compounds',
        iconName: 'inorganic',
        questions: _getInorganicQuestions(),
      ),
      QuizCategoryModel(
        id: 'biochemical',
        title: 'Biochemical Compounds',
        iconName: 'biochemical',
        questions: _getBiochemicalQuestions(),
      ),
      QuizCategoryModel(
        id: 'polymers',
        title: 'Polymers',
        iconName: 'polymers',
        questions: _getPolymersQuestions(),
      ),
    ];
  }

  static List<QuestionModel> _getAcidsQuestions() {
    return [
      QuestionModel(
        id: 'acid_1',
        question: 'Which acid forms when CO₂ dissolves in water?',
        options: ['Formic', 'Carbonic', 'Acetic', 'Oxalic'],
        correctAnswerIndex: 1,
        explanation: 'CO₂ + H₂O forms carbonic acid.',
      ),
      QuestionModel(
        id: 'acid_2',
        question: 'What is the pH range of strong acids?',
        options: ['0-3', '4-6', '7', '8-14'],
        correctAnswerIndex: 0,
        explanation: 'Strong acids have pH values between 0 and 3.',
      ),
      QuestionModel(
        id: 'acid_3',
        question: 'Which acid is found in vinegar?',
        options: ['Citric acid', 'Acetic acid', 'Lactic acid', 'Tartaric acid'],
        correctAnswerIndex: 1,
        explanation: 'Vinegar contains acetic acid (CH₃COOH).',
      ),
      QuestionModel(
        id: 'acid_4',
        question: 'What is the formula of sulfuric acid?',
        options: ['H₂SO₃', 'H₂SO₄', 'HSO₄', 'H₂S'],
        correctAnswerIndex: 1,
        explanation: 'Sulfuric acid has the formula H₂SO₄.',
      ),
      QuestionModel(
        id: 'acid_5',
        question: 'Which acid is present in gastric juice?',
        options: ['Sulfuric acid', 'Nitric acid', 'Hydrochloric acid', 'Phosphoric acid'],
        correctAnswerIndex: 2,
        explanation: 'Gastric juice contains hydrochloric acid (HCl).',
      ),
      QuestionModel(
        id: 'acid_6',
        question: 'What color does litmus turn in acidic solution?',
        options: ['Blue', 'Red', 'Green', 'Yellow'],
        correctAnswerIndex: 1,
        explanation: 'Blue litmus paper turns red in acidic solutions.',
      ),
      QuestionModel(
        id: 'acid_7',
        question: 'Which acid is used in car batteries?',
        options: ['Hydrochloric acid', 'Sulfuric acid', 'Nitric acid', 'Acetic acid'],
        correctAnswerIndex: 1,
        explanation: 'Car batteries use sulfuric acid as the electrolyte.',
      ),
      QuestionModel(
        id: 'acid_8',
        question: 'What is the common name for HNO₃?',
        options: ['Aqua fortis', 'Spirit of salt', 'Oil of vitriol', 'Muriatic acid'],
        correctAnswerIndex: 0,
        explanation: 'HNO₃ (nitric acid) is also called aqua fortis.',
      ),
      QuestionModel(
        id: 'acid_9',
        question: 'Which acid is found in citrus fruits?',
        options: ['Malic acid', 'Citric acid', 'Tartaric acid', 'Oxalic acid'],
        correctAnswerIndex: 1,
        explanation: 'Citrus fruits contain citric acid.',
      ),
      QuestionModel(
        id: 'acid_10',
        question: 'What happens when acid reacts with metal?',
        options: ['Oxygen is released', 'Hydrogen is released', 'Nitrogen is released', 'Carbon dioxide is released'],
        correctAnswerIndex: 1,
        explanation: 'Acids react with metals to produce hydrogen gas.',
      ),
      QuestionModel(
        id: 'acid_11',
        question: 'Which acid is known as king of acids?',
        options: ['Hydrochloric acid', 'Sulfuric acid', 'Nitric acid', 'Phosphoric acid'],
        correctAnswerIndex: 1,
        explanation: 'Sulfuric acid is called the king of acids due to its widespread use.',
      ),
      QuestionModel(
        id: 'acid_12',
        question: 'What is the taste of acids?',
        options: ['Sweet', 'Bitter', 'Sour', 'Salty'],
        correctAnswerIndex: 2,
        explanation: 'Acids have a sour taste.',
      ),
      QuestionModel(
        id: 'acid_13',
        question: 'Which acid is used in soft drinks?',
        options: ['Citric acid', 'Carbonic acid', 'Phosphoric acid', 'All of these'],
        correctAnswerIndex: 3,
        explanation: 'Soft drinks contain various acids including citric, carbonic, and phosphoric acid.',
      ),
      QuestionModel(
        id: 'acid_14',
        question: 'What is the formula of phosphoric acid?',
        options: ['H₃PO₃', 'H₃PO₄', 'H₄P₂O₇', 'HPO₃'],
        correctAnswerIndex: 1,
        explanation: 'Phosphoric acid has the formula H₃PO₄.',
      ),
      QuestionModel(
        id: 'acid_15',
        question: 'Which acid is found in ant sting?',
        options: ['Acetic acid', 'Formic acid', 'Oxalic acid', 'Citric acid'],
        correctAnswerIndex: 1,
        explanation: 'Ant sting contains formic acid (methanoic acid).',
      ),
      QuestionModel(
        id: 'acid_16',
        question: 'What is aqua regia?',
        options: ['HCl + HNO₃', 'H₂SO₄ + HNO₃', 'HCl + H₂SO₄', 'HNO₃ only'],
        correctAnswerIndex: 0,
        explanation: 'Aqua regia is a mixture of HCl and HNO₃ in 3:1 ratio.',
      ),
      QuestionModel(
        id: 'acid_17',
        question: 'Which acid turns turmeric paper red?',
        options: ['All acids', 'Strong acids only', 'Weak acids only', 'None'],
        correctAnswerIndex: 3,
        explanation: 'Acids do not turn turmeric red; bases do.',
      ),
      QuestionModel(
        id: 'acid_18',
        question: 'What is the basicity of H₂SO₄?',
        options: ['1', '2', '3', '4'],
        correctAnswerIndex: 1,
        explanation: 'H₂SO₄ has a basicity of 2 (it can donate 2 H⁺ ions).',
      ),
      QuestionModel(
        id: 'acid_19',
        question: 'Which acid is used for etching glass?',
        options: ['Hydrochloric acid', 'Sulfuric acid', 'Nitric acid', 'Hydrofluoric acid'],
        correctAnswerIndex: 3,
        explanation: 'Hydrofluoric acid (HF) is used for etching glass.',
      ),
      QuestionModel(
        id: 'acid_20',
        question: 'What is the formula of boric acid?',
        options: ['H₃BO₃', 'H₂BO₃', 'HBO₂', 'H₄B₂O₅'],
        correctAnswerIndex: 0,
        explanation: 'Boric acid has the formula H₃BO₃.',
      ),
    ];
  }

  static List<QuestionModel> _getBasesQuestions() {
    return [
      QuestionModel(
        id: 'base_1',
        question: 'What is the pH range of strong bases?',
        options: ['0-6', '7', '8-14', '11-14'],
        correctAnswerIndex: 3,
        explanation: 'Strong bases have pH values between 11 and 14.',
      ),
      QuestionModel(
        id: 'base_2',
        question: 'Which base is known as caustic soda?',
        options: ['NaOH', 'KOH', 'Ca(OH)₂', 'Mg(OH)₂'],
        correctAnswerIndex: 0,
        explanation: 'Sodium hydroxide (NaOH) is called caustic soda.',
      ),
      // Add 18 more base questions...
      QuestionModel(
        id: 'base_3',
        question: 'What color does phenolphthalein turn in basic solution?',
        options: ['Colorless', 'Pink', 'Yellow', 'Blue'],
        correctAnswerIndex: 1,
        explanation: 'Phenolphthalein turns pink in basic solutions.',
      ),
    ];
  }

  static List<QuestionModel> _getSaltsQuestions() {
    return [
      QuestionModel(
        id: 'salt_1',
        question: 'What is common salt chemically?',
        options: ['KCl', 'NaCl', 'CaCl₂', 'MgCl₂'],
        correctAnswerIndex: 1,
        explanation: 'Common salt is sodium chloride (NaCl).',
      ),
      // Add 19 more salt questions...
    ];
  }

  static List<QuestionModel> _getOrganicQuestions() {
    return [
      QuestionModel(
        id: 'organic_1',
        question: 'What is the general formula of alkanes?',
        options: ['CₙH₂ₙ', 'CₙH₂ₙ₊₂', 'CₙH₂ₙ₋₂', 'CₙHₙ'],
        correctAnswerIndex: 1,
        explanation: 'Alkanes have the general formula CₙH₂ₙ₊₂.',
      ),
      // Add 19 more organic questions...
    ];
  }

  static List<QuestionModel> _getElementsQuestions() {
    return [
      QuestionModel(
        id: 'element_1',
        question: 'What is the atomic number of carbon?',
        options: ['4', '6', '8', '12'],
        correctAnswerIndex: 1,
        explanation: 'Carbon has atomic number 6.',
      ),
      // Add 19 more element questions...
    ];
  }

  static List<QuestionModel> _getInorganicQuestions() {
    return [
      QuestionModel(
        id: 'inorganic_1',
        question: 'What is the formula of water?',
        options: ['H₂O', 'H₂O₂', 'HO', 'H₃O'],
        correctAnswerIndex: 0,
        explanation: 'Water has the formula H₂O.',
      ),
      // Add 19 more inorganic questions...
    ];
  }

  static List<QuestionModel> _getBiochemicalQuestions() {
    return [
      QuestionModel(
        id: 'biochem_1',
        question: 'Which biomolecule stores genetic information?',
        options: ['Protein', 'Carbohydrate', 'DNA', 'Lipid'],
        correctAnswerIndex: 2,
        explanation: 'DNA stores genetic information.',
      ),
      // Add 19 more biochemical questions...
    ];
  }

  static List<QuestionModel> _getPolymersQuestions() {
    return [
      QuestionModel(
        id: 'polymer_1',
        question: 'What is the monomer of polythene?',
        options: ['Propene', 'Ethene', 'Butene', 'Methane'],
        correctAnswerIndex: 1,
        explanation: 'Polythene is made from ethene monomers.',
      ),
      // Add 19 more polymer questions...
    ];
  }
}