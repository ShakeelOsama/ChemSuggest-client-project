// lib/data/models/models.dart

/// Category Model - For main categories like Acids, Bases, etc.
class CategoryModel {
  final String id;
  final String name;
  final String icon;
  final int totalChemicals;
  final int subcategoriesCount;
  final List<SubcategoryModel> subcategories;
  final List<int> gradientColors;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.totalChemicals,
    required this.subcategoriesCount,
    required this.subcategories,
    required this.gradientColors,
  });
}

/// Subcategory Model - For subcategories like Strong acids, Weak acids
class SubcategoryModel {
  final String id;
  final String name;
  final int chemicalCount;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.chemicalCount,
  });
}

/// Chemical Model - For individual chemicals like HCl, H2SO4
class ChemicalModel {
  final String id;
  final String name;
  final String formula;
  final String? commonName;
  final List<String> commonNames;
  final String physicalState;
  final String toxicity;
  final String molecularWeight;
  
  // Basic Information
  final String category;
  final String subcategory;
  final String composition;
  
  // Physical Properties (Optional)
  final String? meltingPoint;
  final String? boilingPoint;
  final String? density;
  
  // Discovery (Optional)
  final String? discoverer;
  final String? discoveryYear;
  final String? source;
  
  // Lists
  final List<String> uses;
  final List<String> advantages;
  final List<String> disadvantages;

  ChemicalModel({
    required this.id,
    required this.name,
    required this.formula,
    this.commonName,
    this.commonNames = const [],
    required this.physicalState,
    required this.toxicity,
    required this.molecularWeight,
    required this.category,
    required this.subcategory,
    required this.composition,
    this.meltingPoint,
    this.boilingPoint,
    this.density,
    this.discoverer,
    this.discoveryYear,
    this.source,
    this.uses = const [],
    this.advantages = const [],
    this.disadvantages = const [],
  });
}

/// Constants for Physical State
class PhysicalState {
  static const String liquid = 'Liquid';
  static const String liquidAqueous = 'Liquid (aqueous solution)';
  static const String liquidOnlySolution = 'Liquid (only in solution)';
  static const String liquidCrystallineSolid = 'Liquid/Crystalline solid';
  static const String gas = 'Gas';
  static const String gasLiquidBelow26C = 'Gas (liquid below 26°C)';
  static const String solid = 'Solid';
  static const String crystallineSolid = 'Crystalline solid';
  static const String whiteCrystallineSolid = 'White crystalline solid';
  static const String syrupyLiquid = 'Syrupy liquid';
  static const String whitePowder = 'White Powder';
  static const String solidPelletsFlakes = 'Solid Pellets flakes'; 
  static const String gasLiquidUnderPressure = 'Gas liquid under pressure';    
  static const String whiteCrystallinePowder = 'White crystalline Powder';    
  static const String blueCrystallineSolid = 'Blue crystalline powder';
  static const String viscousLiquid = 'Viscous liquid'; 
  static const String whiteSolid = 'White solid'; 
  static const String whiteYellowSolid = 'White yellow solid';     
  static const String solidPurpleBlackCrystals = 'Solid Purple black crystal'; 
  // static const String whiteYellowSolid = 'Blue crystalline powder'; 
  // static const String whiteYellowSolid = 'Blue crystalline powder'; 
  // static const String whiteYellowSolid = 'Blue crystalline powder'; 
  }

/// Constants for Toxicity Levels
class ToxicityLevel {
  static const String extremelyToxic = 'Extremely toxic';
  static const String highlyToxic = 'Highly toxic';
  static const String toxic = 'Toxic';
  static const String moderatelyToxic = 'Moderately toxic';
  static const String lowToxicity = 'Low toxicity';
  static const String veryLowToxicity = 'Very Low toxicity';  
  static const String nonToxic = 'Non Toxic';  
  static const String toxicByInhalation = 'Toxic by inhalation'; 
  static const String highlyToxicCarcinogenic = 'Highly Toxic Carcinogenic'; 
  static const String moderateToxicity = 'Moderate Toxicity'; 
  static const String nonToxicCrystallineSilicaCausesSilicosis = 'non Toxic Crystalline'; 
  static const String corrosive = 'corrosive'; 
  // static const String nonToxicCrystallineSilicaCausesSilicosis = 'non Toxic Crystalline';     
}
